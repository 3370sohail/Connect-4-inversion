-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/29/2017 21:34:26"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	gpio IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(11 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	GPIO_0 : OUT std_logic_vector(26 DOWNTO 0);
	GPIO_1 : OUT std_logic_vector(26 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END gpio;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[0]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[7]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[8]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[9]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[10]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[11]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[12]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[13]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[14]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[15]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[16]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[17]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[18]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[19]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[20]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[21]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[22]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[23]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[24]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[25]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[26]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gpio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_GPIO_1 : std_logic_vector(26 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \r|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Ram_C~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\ : std_logic;
SIGNAL \Main_C[1]~31_combout\ : std_logic;
SIGNAL \Main_C[4]~37_combout\ : std_logic;
SIGNAL \Main_C[8]~45_combout\ : std_logic;
SIGNAL \Main_C[10]~49_combout\ : std_logic;
SIGNAL \Main_C[14]~57_combout\ : std_logic;
SIGNAL \Main_C[19]~67_combout\ : std_logic;
SIGNAL \Main_C[22]~73_combout\ : std_logic;
SIGNAL \Main_C[23]~76\ : std_logic;
SIGNAL \Main_C[24]~77_combout\ : std_logic;
SIGNAL \Main_C[24]~78\ : std_logic;
SIGNAL \Main_C[25]~79_combout\ : std_logic;
SIGNAL \Main_C[25]~80\ : std_logic;
SIGNAL \Main_C[26]~81_combout\ : std_logic;
SIGNAL \Main_C[26]~82\ : std_logic;
SIGNAL \Main_C[27]~83_combout\ : std_logic;
SIGNAL \data_in[1]~1_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~5_combout\ : std_logic;
SIGNAL \f|d0|Selector0~3_combout\ : std_logic;
SIGNAL \f|d0|Selector0~4_combout\ : std_logic;
SIGNAL \f|d0|valid~1_combout\ : std_logic;
SIGNAL \f|d0|valid~2_combout\ : std_logic;
SIGNAL \f|d0|col_out~28_combout\ : std_logic;
SIGNAL \f|d0|col_out~29_combout\ : std_logic;
SIGNAL \f|d0|col_out~30_combout\ : std_logic;
SIGNAL \f|d0|col_out~31_combout\ : std_logic;
SIGNAL \f|d0|col_out~32_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \f|d0|col_two~0_combout\ : std_logic;
SIGNAL \f|d0|Add7~2_combout\ : std_logic;
SIGNAL \f|c0|Selector4~0_combout\ : std_logic;
SIGNAL \f|d0|WideOr4~0_combout\ : std_logic;
SIGNAL \f|d0|not_set~4_combout\ : std_logic;
SIGNAL \f|d0|not_set~5_combout\ : std_logic;
SIGNAL \f|d0|not_set~6_combout\ : std_logic;
SIGNAL \f|d0|not_set~7_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \f|d0|col_seven~2_combout\ : std_logic;
SIGNAL \f|d0|Selector0~5_combout\ : std_logic;
SIGNAL \f|d0|Selector0~15_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~9_combout\ : std_logic;
SIGNAL \f|c0|Selector2~0_combout\ : std_logic;
SIGNAL \f|c0|current_state.S_DRAW_1~regout\ : std_logic;
SIGNAL \f|c0|Selector3~0_combout\ : std_logic;
SIGNAL \f|c0|Selector3~1_combout\ : std_logic;
SIGNAL \f|c0|current_state.S_LOAD_COLUMN_2~regout\ : std_logic;
SIGNAL \f|d0|Add7~1_combout\ : std_logic;
SIGNAL \f|d0|Equal7~0_combout\ : std_logic;
SIGNAL \f|d0|col_six~0_combout\ : std_logic;
SIGNAL \f|d0|col_store~22_combout\ : std_logic;
SIGNAL \f|d0|col_store~21_combout\ : std_logic;
SIGNAL \f|d0|col_store~25_combout\ : std_logic;
SIGNAL \f|d0|col_store~8_combout\ : std_logic;
SIGNAL \f|d0|col_store~23_combout\ : std_logic;
SIGNAL \f|d0|Selector0~14_combout\ : std_logic;
SIGNAL \f|d0|col_store~20_combout\ : std_logic;
SIGNAL \f|d0|not_set~2_combout\ : std_logic;
SIGNAL \f|c0|ld_column~combout\ : std_logic;
SIGNAL \f|d0|Selector9~14_combout\ : std_logic;
SIGNAL \f|d0|Selector9~2_combout\ : std_logic;
SIGNAL \f|d0|Selector0~2_combout\ : std_logic;
SIGNAL \f|d0|Add2~0_combout\ : std_logic;
SIGNAL \f|d0|col_two[5]~1_combout\ : std_logic;
SIGNAL \f|d0|col_store~19_combout\ : std_logic;
SIGNAL \f|d0|col_three[6]~6_combout\ : std_logic;
SIGNAL \f|d0|col_two[5]~2_combout\ : std_logic;
SIGNAL \f|d0|Add2~1_combout\ : std_logic;
SIGNAL \f|d0|Equal2~0_combout\ : std_logic;
SIGNAL \f|d0|col_two~3_combout\ : std_logic;
SIGNAL \f|d0|Selector0~12_combout\ : std_logic;
SIGNAL \f|d0|Selector9~4_combout\ : std_logic;
SIGNAL \f|d0|Selector0~10_combout\ : std_logic;
SIGNAL \f|d0|Add3~1_combout\ : std_logic;
SIGNAL \f|d0|col_three[6]~2_combout\ : std_logic;
SIGNAL \f|d0|col_three[6]~4_combout\ : std_logic;
SIGNAL \f|d0|Add3~2_combout\ : std_logic;
SIGNAL \f|d0|col_three~3_combout\ : std_logic;
SIGNAL \f|d0|Add3~0_combout\ : std_logic;
SIGNAL \f|d0|col_three~5_combout\ : std_logic;
SIGNAL \f|d0|Equal3~0_combout\ : std_logic;
SIGNAL \f|d0|Selector9~3_combout\ : std_logic;
SIGNAL \f|d0|Selector9~5_combout\ : std_logic;
SIGNAL \f|d0|col_four~0_combout\ : std_logic;
SIGNAL \f|d0|col_four[3]~1_combout\ : std_logic;
SIGNAL \f|d0|col_four[3]~2_combout\ : std_logic;
SIGNAL \f|d0|Add4~2_combout\ : std_logic;
SIGNAL \f|d0|Add4~1_combout\ : std_logic;
SIGNAL \f|d0|Equal4~0_combout\ : std_logic;
SIGNAL \f|d0|Selector9~8_combout\ : std_logic;
SIGNAL \f|d0|Selector9~6_combout\ : std_logic;
SIGNAL \f|d0|col_one~3_combout\ : std_logic;
SIGNAL \f|d0|col_out~13_combout\ : std_logic;
SIGNAL \f|d0|col_one[6]~1_combout\ : std_logic;
SIGNAL \f|d0|col_one[6]~2_combout\ : std_logic;
SIGNAL \f|d0|col_one~0_combout\ : std_logic;
SIGNAL \f|d0|Add1~0_combout\ : std_logic;
SIGNAL \f|d0|Add1~1_combout\ : std_logic;
SIGNAL \f|d0|Selector0~6_combout\ : std_logic;
SIGNAL \f|d0|Selector0~7_combout\ : std_logic;
SIGNAL \f|d0|col_zero~0_combout\ : std_logic;
SIGNAL \f|d0|col_zero[6]~1_combout\ : std_logic;
SIGNAL \f|d0|col_zero[6]~2_combout\ : std_logic;
SIGNAL \f|d0|Add0~0_combout\ : std_logic;
SIGNAL \f|d0|Add0~1_combout\ : std_logic;
SIGNAL \f|d0|Selector0~8_combout\ : std_logic;
SIGNAL \f|d0|col_zero~3_combout\ : std_logic;
SIGNAL \f|d0|Selector0~9_combout\ : std_logic;
SIGNAL \f|d0|Selector9~7_combout\ : std_logic;
SIGNAL \f|d0|Selector9~9_combout\ : std_logic;
SIGNAL \f|d0|Selector9~10_combout\ : std_logic;
SIGNAL \f|d0|Selector9~11_combout\ : std_logic;
SIGNAL \f|d0|Selector9~12_combout\ : std_logic;
SIGNAL \f|d0|Selector9~13_combout\ : std_logic;
SIGNAL \f|d0|not_set~regout\ : std_logic;
SIGNAL \f|d0|not_set~3_combout\ : std_logic;
SIGNAL \f|d0|col_seven[6]~5_combout\ : std_logic;
SIGNAL \f|d0|col_six[3]~1_combout\ : std_logic;
SIGNAL \f|d0|Add6~2_combout\ : std_logic;
SIGNAL \f|d0|Add6~0_combout\ : std_logic;
SIGNAL \f|d0|col_six~2_combout\ : std_logic;
SIGNAL \f|d0|Add6~1_combout\ : std_logic;
SIGNAL \f|d0|Equal6~0_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~10_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~11_combout\ : std_logic;
SIGNAL \f|d0|Selector0~16_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~12_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~14_combout\ : std_logic;
SIGNAL \f|d0|col_five~0_combout\ : std_logic;
SIGNAL \f|d0|col_five[6]~1_combout\ : std_logic;
SIGNAL \f|d0|Add5~1_combout\ : std_logic;
SIGNAL \f|d0|Add5~2_combout\ : std_logic;
SIGNAL \f|d0|Add5~0_combout\ : std_logic;
SIGNAL \f|d0|col_five~2_combout\ : std_logic;
SIGNAL \f|d0|Equal5~0_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~13_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~15_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~16_combout\ : std_logic;
SIGNAL \f|d0|col_store[6]~17_combout\ : std_logic;
SIGNAL \f|d0|col_store[7]~18_combout\ : std_logic;
SIGNAL \f|d0|col_seven[6]~3_combout\ : std_logic;
SIGNAL \f|d0|Add7~0_combout\ : std_logic;
SIGNAL \f|d0|col_seven~4_combout\ : std_logic;
SIGNAL \f|d0|Add4~0_combout\ : std_logic;
SIGNAL \f|d0|col_four~3_combout\ : std_logic;
SIGNAL \f|d0|col_out[4]~16_combout\ : std_logic;
SIGNAL \f|d0|col_out~12_combout\ : std_logic;
SIGNAL \f|d0|col_store~24_combout\ : std_logic;
SIGNAL \f|d0|col_out~0_combout\ : std_logic;
SIGNAL \f|d0|col_out~33_combout\ : std_logic;
SIGNAL \f|d0|col_out~34_combout\ : std_logic;
SIGNAL \f|d0|col_out~35_combout\ : std_logic;
SIGNAL \f|d0|col_out~36_combout\ : std_logic;
SIGNAL \f|d0|col_out~37_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~8_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~9_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~6_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~7_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~3_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~4_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~10_combout\ : std_logic;
SIGNAL \f|d0|col_out[2]~11_combout\ : std_logic;
SIGNAL \address[0]~8\ : std_logic;
SIGNAL \address[1]~11_combout\ : std_logic;
SIGNAL \address[5]~19_combout\ : std_logic;
SIGNAL \H3|Decoder0~2_combout\ : std_logic;
SIGNAL \address[3]~15_combout\ : std_logic;
SIGNAL \address[2]~9_combout\ : std_logic;
SIGNAL \address[2]~10_combout\ : std_logic;
SIGNAL \address[1]~12\ : std_logic;
SIGNAL \address[2]~14\ : std_logic;
SIGNAL \address[3]~16\ : std_logic;
SIGNAL \address[4]~17_combout\ : std_logic;
SIGNAL \address[4]~18\ : std_logic;
SIGNAL \address[5]~20\ : std_logic;
SIGNAL \address[6]~21_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \f|d0|col_out~17_combout\ : std_logic;
SIGNAL \f|d0|col_out~23_combout\ : std_logic;
SIGNAL \f|d0|col_out~24_combout\ : std_logic;
SIGNAL \f|d0|col_out~25_combout\ : std_logic;
SIGNAL \f|d0|col_out~26_combout\ : std_logic;
SIGNAL \f|d0|col_out~27_combout\ : std_logic;
SIGNAL \data_in[1]~2_combout\ : std_logic;
SIGNAL \f|d0|col_out~14_combout\ : std_logic;
SIGNAL \address[0]~7_combout\ : std_logic;
SIGNAL \data_in[1]~0_combout\ : std_logic;
SIGNAL \data_in[1]~3_combout\ : std_logic;
SIGNAL \wren~0_combout\ : std_logic;
SIGNAL \f|c0|Selector5~0_combout\ : std_logic;
SIGNAL \f|c0|current_state.S_DRAW_2~regout\ : std_logic;
SIGNAL \f|d0|Selector0~11_combout\ : std_logic;
SIGNAL \f|d0|Selector0~13_combout\ : std_logic;
SIGNAL \f|d0|valid~0_combout\ : std_logic;
SIGNAL \f|d0|valid~3_combout\ : std_logic;
SIGNAL \f|d0|valid~regout\ : std_logic;
SIGNAL \f|c0|current_state~11_combout\ : std_logic;
SIGNAL \f|c0|current_state~12_combout\ : std_logic;
SIGNAL \f|c0|current_state.S_LOAD_COLUMN_1~regout\ : std_logic;
SIGNAL \f|c0|Selector1~0_combout\ : std_logic;
SIGNAL \f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\ : std_logic;
SIGNAL \f|c0|WideOr6~0_combout\ : std_logic;
SIGNAL \Main_C[0]~28_combout\ : std_logic;
SIGNAL \Main_C[2]~30_combout\ : std_logic;
SIGNAL \Main_C[0]~29\ : std_logic;
SIGNAL \Main_C[1]~32\ : std_logic;
SIGNAL \Main_C[2]~33_combout\ : std_logic;
SIGNAL \Main_C[2]~34\ : std_logic;
SIGNAL \Main_C[3]~36\ : std_logic;
SIGNAL \Main_C[4]~38\ : std_logic;
SIGNAL \Main_C[5]~39_combout\ : std_logic;
SIGNAL \Main_C[5]~40\ : std_logic;
SIGNAL \Main_C[6]~42\ : std_logic;
SIGNAL \Main_C[7]~43_combout\ : std_logic;
SIGNAL \Main_C[7]~44\ : std_logic;
SIGNAL \Main_C[8]~46\ : std_logic;
SIGNAL \Main_C[9]~47_combout\ : std_logic;
SIGNAL \Main_C[9]~48\ : std_logic;
SIGNAL \Main_C[10]~50\ : std_logic;
SIGNAL \Main_C[11]~51_combout\ : std_logic;
SIGNAL \Main_C[11]~52\ : std_logic;
SIGNAL \Main_C[12]~53_combout\ : std_logic;
SIGNAL \Main_C[12]~54\ : std_logic;
SIGNAL \Main_C[13]~55_combout\ : std_logic;
SIGNAL \Main_C[13]~56\ : std_logic;
SIGNAL \Main_C[14]~58\ : std_logic;
SIGNAL \Main_C[15]~59_combout\ : std_logic;
SIGNAL \Main_C[15]~60\ : std_logic;
SIGNAL \Main_C[16]~61_combout\ : std_logic;
SIGNAL \Main_C[16]~62\ : std_logic;
SIGNAL \Main_C[17]~64\ : std_logic;
SIGNAL \Main_C[18]~65_combout\ : std_logic;
SIGNAL \Main_C[18]~66\ : std_logic;
SIGNAL \Main_C[19]~68\ : std_logic;
SIGNAL \Main_C[20]~70\ : std_logic;
SIGNAL \Main_C[21]~71_combout\ : std_logic;
SIGNAL \Main_C[21]~72\ : std_logic;
SIGNAL \Main_C[22]~74\ : std_logic;
SIGNAL \Main_C[23]~75_combout\ : std_logic;
SIGNAL \Main_C[20]~69_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Main_C[3]~35_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Main_C[6]~41_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Main_C[17]~63_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Ram_C~0_combout\ : std_logic;
SIGNAL \Ram_C~regout\ : std_logic;
SIGNAL \Ram_C~clkctrl_outclk\ : std_logic;
SIGNAL \data_in[1]~4_combout\ : std_logic;
SIGNAL \address[2]~13_combout\ : std_logic;
SIGNAL \data_in[2]~5_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \GPIO_0~0_combout\ : std_logic;
SIGNAL \GPIO_0~1_combout\ : std_logic;
SIGNAL \GPIO_0~2_combout\ : std_logic;
SIGNAL \GPIO_0~3_combout\ : std_logic;
SIGNAL \GPIO_0~4_combout\ : std_logic;
SIGNAL \GPIO_0~5_combout\ : std_logic;
SIGNAL \GPIO_0~6_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \GPIO_1~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \GPIO_1~1_combout\ : std_logic;
SIGNAL \GPIO_1~2_combout\ : std_logic;
SIGNAL \GPIO_1~3_combout\ : std_logic;
SIGNAL \GPIO_1~4_combout\ : std_logic;
SIGNAL \GPIO_1~5_combout\ : std_logic;
SIGNAL \GPIO_1~6_combout\ : std_logic;
SIGNAL \f|d0|col_out~18_combout\ : std_logic;
SIGNAL \f|d0|col_out~19_combout\ : std_logic;
SIGNAL \f|d0|col_out~20_combout\ : std_logic;
SIGNAL \f|d0|col_out~21_combout\ : std_logic;
SIGNAL \f|d0|col_out~22_combout\ : std_logic;
SIGNAL \f|d0|col_out~15_combout\ : std_logic;
SIGNAL \f|d0|col_out~1_combout\ : std_logic;
SIGNAL \f|d0|col_out~2_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \H2|WideOr6~0_combout\ : std_logic;
SIGNAL \H2|WideOr5~0_combout\ : std_logic;
SIGNAL \H2|WideOr4~0_combout\ : std_logic;
SIGNAL \H2|WideOr3~0_combout\ : std_logic;
SIGNAL \H2|WideOr2~0_combout\ : std_logic;
SIGNAL \H2|WideOr1~0_combout\ : std_logic;
SIGNAL \H2|WideOr0~0_combout\ : std_logic;
SIGNAL \H3|WideOr6~0_combout\ : std_logic;
SIGNAL \H3|WideOr5~0_combout\ : std_logic;
SIGNAL \H3|WideOr4~0_combout\ : std_logic;
SIGNAL \H3|WideOr3~0_combout\ : std_logic;
SIGNAL \H3|Decoder0~0_combout\ : std_logic;
SIGNAL \H3|Decoder0~1_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f|d0|col_store\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f|d0|col_five\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_six\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_seven\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_three\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \r|altsyncram_component|auto_generated|q_a\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \f|d0|col_four\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_two\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_zero\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_one\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \f|d0|col_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \r_2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(18 DOWNTO 0);
SIGNAL address : std_logic_vector(6 DOWNTO 0);
SIGNAL Main_C : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \H3|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \H2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \f|c0|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
GPIO_0 <= ww_GPIO_0;
GPIO_1 <= ww_GPIO_1;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\r_2|altsyncram_component|auto_generated|q_a\(18) & \r_2|altsyncram_component|auto_generated|q_a\(17) & \r_2|altsyncram_component|auto_generated|q_a\(16) & 
\r_2|altsyncram_component|auto_generated|q_a\(15) & \r_2|altsyncram_component|auto_generated|q_a\(14) & \r_2|altsyncram_component|auto_generated|q_a\(13) & \r_2|altsyncram_component|auto_generated|q_a\(12) & 
\r_2|altsyncram_component|auto_generated|q_a\(11) & \r_2|altsyncram_component|auto_generated|q_a\(10) & \r_2|altsyncram_component|auto_generated|q_a\(9) & \r_2|altsyncram_component|auto_generated|q_a\(8) & 
\r_2|altsyncram_component|auto_generated|q_a\(7) & \r_2|altsyncram_component|auto_generated|q_a\(6) & \r_2|altsyncram_component|auto_generated|q_a\(5) & \r_2|altsyncram_component|auto_generated|q_a\(4) & 
\r_2|altsyncram_component|auto_generated|q_a\(3) & \data_in[2]~5_combout\ & \data_in[1]~4_combout\);

\r|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (address(5) & address(4) & address(3) & address(2) & address(1) & address(0));

\r|altsyncram_component|auto_generated|q_a\(1) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\r|altsyncram_component|auto_generated|q_a\(2) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\r|altsyncram_component|auto_generated|q_a\(3) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\r|altsyncram_component|auto_generated|q_a\(4) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\r|altsyncram_component|auto_generated|q_a\(5) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\r|altsyncram_component|auto_generated|q_a\(6) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\r|altsyncram_component|auto_generated|q_a\(7) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\r|altsyncram_component|auto_generated|q_a\(8) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\r|altsyncram_component|auto_generated|q_a\(9) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);
\r|altsyncram_component|auto_generated|q_a\(10) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(9);
\r|altsyncram_component|auto_generated|q_a\(11) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(10);
\r|altsyncram_component|auto_generated|q_a\(12) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(11);
\r|altsyncram_component|auto_generated|q_a\(13) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(12);
\r|altsyncram_component|auto_generated|q_a\(14) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(13);
\r|altsyncram_component|auto_generated|q_a\(15) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(14);
\r|altsyncram_component|auto_generated|q_a\(16) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(15);
\r|altsyncram_component|auto_generated|q_a\(17) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(16);
\r|altsyncram_component|auto_generated|q_a\(18) <= \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(17);

\r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ <= (\r_2|altsyncram_component|auto_generated|q_a\(18) & \r_2|altsyncram_component|auto_generated|q_a\(17) & \r_2|altsyncram_component|auto_generated|q_a\(16) & 
\r_2|altsyncram_component|auto_generated|q_a\(15) & \r_2|altsyncram_component|auto_generated|q_a\(14) & \r_2|altsyncram_component|auto_generated|q_a\(13) & \r_2|altsyncram_component|auto_generated|q_a\(12) & 
\r_2|altsyncram_component|auto_generated|q_a\(11) & \r_2|altsyncram_component|auto_generated|q_a\(10) & \r_2|altsyncram_component|auto_generated|q_a\(9) & \r_2|altsyncram_component|auto_generated|q_a\(8) & 
\r_2|altsyncram_component|auto_generated|q_a\(7) & \r_2|altsyncram_component|auto_generated|q_a\(6) & \r_2|altsyncram_component|auto_generated|q_a\(5) & \r_2|altsyncram_component|auto_generated|q_a\(4) & 
\r_2|altsyncram_component|auto_generated|q_a\(3));

\r_2|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (address(5) & address(4) & address(3) & address(2) & address(1) & address(0));

\r_2|altsyncram_component|auto_generated|q_a\(3) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\r_2|altsyncram_component|auto_generated|q_a\(4) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\r_2|altsyncram_component|auto_generated|q_a\(5) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\r_2|altsyncram_component|auto_generated|q_a\(6) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);
\r_2|altsyncram_component|auto_generated|q_a\(7) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(4);
\r_2|altsyncram_component|auto_generated|q_a\(8) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(5);
\r_2|altsyncram_component|auto_generated|q_a\(9) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(6);
\r_2|altsyncram_component|auto_generated|q_a\(10) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(7);
\r_2|altsyncram_component|auto_generated|q_a\(11) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(8);
\r_2|altsyncram_component|auto_generated|q_a\(12) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(9);
\r_2|altsyncram_component|auto_generated|q_a\(13) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(10);
\r_2|altsyncram_component|auto_generated|q_a\(14) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(11);
\r_2|altsyncram_component|auto_generated|q_a\(15) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(12);
\r_2|altsyncram_component|auto_generated|q_a\(16) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(13);
\r_2|altsyncram_component|auto_generated|q_a\(17) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(14);
\r_2|altsyncram_component|auto_generated|q_a\(18) <= \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(15);

\Ram_C~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ram_C~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\H3|ALT_INV_WideOr4~0_combout\ <= NOT \H3|WideOr4~0_combout\;
\H2|ALT_INV_WideOr0~0_combout\ <= NOT \H2|WideOr0~0_combout\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\f|c0|ALT_INV_WideOr6~0_combout\ <= NOT \f|c0|WideOr6~0_combout\;

-- Location: LCFF_X53_Y2_N25
\f|d0|col_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~32_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(5));

-- Location: LCFF_X54_Y2_N13
\f|d0|col_seven[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add7~2_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_seven[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_seven\(5));

-- Location: LCFF_X53_Y3_N9
\f|c0|current_state.S_LOAD_COLUMN_WAIT_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|c0|Selector4~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\);

-- Location: LCFF_X41_Y6_N7
\Main_C[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[1]~31_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(1));

-- Location: LCFF_X41_Y6_N13
\Main_C[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[4]~37_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(4));

-- Location: LCFF_X41_Y6_N25
\Main_C[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[10]~49_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(10));

-- Location: LCFF_X41_Y6_N21
\Main_C[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[8]~45_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(8));

-- Location: LCFF_X40_Y6_N13
\Main_C[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \Main_C[14]~57_combout\,
	sclr => \Main_C[2]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(14));

-- Location: LCFF_X41_Y5_N11
\Main_C[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[19]~67_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(19));

-- Location: LCFF_X41_Y5_N17
\Main_C[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[22]~73_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(22));

-- Location: LCFF_X41_Y5_N21
\Main_C[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[24]~77_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(24));

-- Location: LCFF_X41_Y5_N23
\Main_C[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[25]~79_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(25));

-- Location: LCFF_X41_Y5_N25
\Main_C[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[26]~81_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(26));

-- Location: LCFF_X41_Y5_N27
\Main_C[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[27]~83_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(27));

-- Location: LCCOMB_X41_Y6_N6
\Main_C[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[1]~31_combout\ = (Main_C(1) & (!\Main_C[0]~29\)) # (!Main_C(1) & ((\Main_C[0]~29\) # (GND)))
-- \Main_C[1]~32\ = CARRY((!\Main_C[0]~29\) # (!Main_C(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(1),
	datad => VCC,
	cin => \Main_C[0]~29\,
	combout => \Main_C[1]~31_combout\,
	cout => \Main_C[1]~32\);

-- Location: LCCOMB_X41_Y6_N12
\Main_C[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[4]~37_combout\ = (Main_C(4) & (\Main_C[3]~36\ $ (GND))) # (!Main_C(4) & (!\Main_C[3]~36\ & VCC))
-- \Main_C[4]~38\ = CARRY((Main_C(4) & !\Main_C[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(4),
	datad => VCC,
	cin => \Main_C[3]~36\,
	combout => \Main_C[4]~37_combout\,
	cout => \Main_C[4]~38\);

-- Location: LCCOMB_X41_Y6_N20
\Main_C[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[8]~45_combout\ = (Main_C(8) & (\Main_C[7]~44\ $ (GND))) # (!Main_C(8) & (!\Main_C[7]~44\ & VCC))
-- \Main_C[8]~46\ = CARRY((Main_C(8) & !\Main_C[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(8),
	datad => VCC,
	cin => \Main_C[7]~44\,
	combout => \Main_C[8]~45_combout\,
	cout => \Main_C[8]~46\);

-- Location: LCCOMB_X41_Y6_N24
\Main_C[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[10]~49_combout\ = (Main_C(10) & (\Main_C[9]~48\ $ (GND))) # (!Main_C(10) & (!\Main_C[9]~48\ & VCC))
-- \Main_C[10]~50\ = CARRY((Main_C(10) & !\Main_C[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(10),
	datad => VCC,
	cin => \Main_C[9]~48\,
	combout => \Main_C[10]~49_combout\,
	cout => \Main_C[10]~50\);

-- Location: LCCOMB_X41_Y5_N0
\Main_C[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[14]~57_combout\ = (Main_C(14) & (\Main_C[13]~56\ $ (GND))) # (!Main_C(14) & (!\Main_C[13]~56\ & VCC))
-- \Main_C[14]~58\ = CARRY((Main_C(14) & !\Main_C[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(14),
	datad => VCC,
	cin => \Main_C[13]~56\,
	combout => \Main_C[14]~57_combout\,
	cout => \Main_C[14]~58\);

-- Location: LCCOMB_X41_Y5_N10
\Main_C[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[19]~67_combout\ = (Main_C(19) & (!\Main_C[18]~66\)) # (!Main_C(19) & ((\Main_C[18]~66\) # (GND)))
-- \Main_C[19]~68\ = CARRY((!\Main_C[18]~66\) # (!Main_C(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(19),
	datad => VCC,
	cin => \Main_C[18]~66\,
	combout => \Main_C[19]~67_combout\,
	cout => \Main_C[19]~68\);

-- Location: LCCOMB_X41_Y5_N16
\Main_C[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[22]~73_combout\ = (Main_C(22) & (\Main_C[21]~72\ $ (GND))) # (!Main_C(22) & (!\Main_C[21]~72\ & VCC))
-- \Main_C[22]~74\ = CARRY((Main_C(22) & !\Main_C[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(22),
	datad => VCC,
	cin => \Main_C[21]~72\,
	combout => \Main_C[22]~73_combout\,
	cout => \Main_C[22]~74\);

-- Location: LCCOMB_X41_Y5_N18
\Main_C[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[23]~75_combout\ = (Main_C(23) & (!\Main_C[22]~74\)) # (!Main_C(23) & ((\Main_C[22]~74\) # (GND)))
-- \Main_C[23]~76\ = CARRY((!\Main_C[22]~74\) # (!Main_C(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(23),
	datad => VCC,
	cin => \Main_C[22]~74\,
	combout => \Main_C[23]~75_combout\,
	cout => \Main_C[23]~76\);

-- Location: LCCOMB_X41_Y5_N20
\Main_C[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[24]~77_combout\ = (Main_C(24) & (\Main_C[23]~76\ $ (GND))) # (!Main_C(24) & (!\Main_C[23]~76\ & VCC))
-- \Main_C[24]~78\ = CARRY((Main_C(24) & !\Main_C[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(24),
	datad => VCC,
	cin => \Main_C[23]~76\,
	combout => \Main_C[24]~77_combout\,
	cout => \Main_C[24]~78\);

-- Location: LCCOMB_X41_Y5_N22
\Main_C[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[25]~79_combout\ = (Main_C(25) & (!\Main_C[24]~78\)) # (!Main_C(25) & ((\Main_C[24]~78\) # (GND)))
-- \Main_C[25]~80\ = CARRY((!\Main_C[24]~78\) # (!Main_C(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(25),
	datad => VCC,
	cin => \Main_C[24]~78\,
	combout => \Main_C[25]~79_combout\,
	cout => \Main_C[25]~80\);

-- Location: LCCOMB_X41_Y5_N24
\Main_C[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[26]~81_combout\ = (Main_C(26) & (\Main_C[25]~80\ $ (GND))) # (!Main_C(26) & (!\Main_C[25]~80\ & VCC))
-- \Main_C[26]~82\ = CARRY((Main_C(26) & !\Main_C[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(26),
	datad => VCC,
	cin => \Main_C[25]~80\,
	combout => \Main_C[26]~81_combout\,
	cout => \Main_C[26]~82\);

-- Location: LCCOMB_X41_Y5_N26
\Main_C[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[27]~83_combout\ = \Main_C[26]~82\ $ (Main_C(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Main_C(27),
	cin => \Main_C[26]~82\,
	combout => \Main_C[27]~83_combout\);

-- Location: LCCOMB_X53_Y2_N10
\data_in[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_in[1]~1_combout\ = (\f|d0|col_out\(2) & (address(2) & (\f|d0|col_out\(3) $ (!address(3))))) # (!\f|d0|col_out\(2) & (!address(2) & (\f|d0|col_out\(3) $ (!address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(2),
	datab => \f|d0|col_out\(3),
	datac => address(2),
	datad => address(3),
	combout => \data_in[1]~1_combout\);

-- Location: LCCOMB_X50_Y3_N20
\f|d0|col_out[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~5_combout\ = (!\f|d0|col_store\(7) & (\f|d0|col_store\(6) $ (!\f|d0|col_store\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_store\(5),
	combout => \f|d0|col_out[2]~5_combout\);

-- Location: LCFF_X54_Y3_N25
\f|d0|col_two[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_two~0_combout\,
	ena => \f|d0|col_two[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_two\(3));

-- Location: LCCOMB_X55_Y3_N4
\f|d0|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~3_combout\ = (\SW~combout\(4) & (!\f|d0|Equal4~0_combout\ & ((!\SW~combout\(5))))) # (!\SW~combout\(4) & (((!\f|d0|Equal5~0_combout\ & \SW~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \f|d0|Equal4~0_combout\,
	datac => \f|d0|Equal5~0_combout\,
	datad => \SW~combout\(5),
	combout => \f|d0|Selector0~3_combout\);

-- Location: LCCOMB_X55_Y3_N10
\f|d0|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~4_combout\ = (\f|d0|Selector0~2_combout\ & \f|d0|Selector0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~2_combout\,
	datac => \f|d0|Selector0~3_combout\,
	combout => \f|d0|Selector0~4_combout\);

-- Location: LCCOMB_X56_Y3_N16
\f|d0|valid~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|valid~1_combout\ = (\SW~combout\(6) & (!\SW~combout\(7) & (!\f|d0|Equal6~0_combout\))) # (!\SW~combout\(6) & (\SW~combout\(7) & ((!\f|d0|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \SW~combout\(7),
	datac => \f|d0|Equal6~0_combout\,
	datad => \f|d0|Equal7~0_combout\,
	combout => \f|d0|valid~1_combout\);

-- Location: LCCOMB_X56_Y3_N10
\f|d0|valid~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|valid~2_combout\ = (\f|d0|valid~1_combout\ & (!\SW~combout\(0) & (!\SW~combout\(1) & \f|d0|Selector0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|valid~1_combout\,
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \f|d0|Selector0~15_combout\,
	combout => \f|d0|valid~2_combout\);

-- Location: LCCOMB_X51_Y3_N10
\f|d0|col_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~28_combout\ = (\f|d0|col_out~12_combout\ & ((\f|d0|col_two\(5)) # ((\f|d0|col_out~0_combout\)))) # (!\f|d0|col_out~12_combout\ & (((\f|d0|col_zero\(5) & !\f|d0|col_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_two\(5),
	datab => \f|d0|col_zero\(5),
	datac => \f|d0|col_out~12_combout\,
	datad => \f|d0|col_out~0_combout\,
	combout => \f|d0|col_out~28_combout\);

-- Location: LCCOMB_X53_Y3_N16
\f|d0|col_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~29_combout\ = (\f|d0|col_out~0_combout\ & ((\f|d0|col_out~28_combout\ & ((\f|d0|col_three\(5)))) # (!\f|d0|col_out~28_combout\ & (\f|d0|col_one\(5))))) # (!\f|d0|col_out~0_combout\ & (((\f|d0|col_out~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_one\(5),
	datab => \f|d0|col_out~0_combout\,
	datac => \f|d0|col_three\(5),
	datad => \f|d0|col_out~28_combout\,
	combout => \f|d0|col_out~29_combout\);

-- Location: LCCOMB_X54_Y2_N6
\f|d0|col_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~30_combout\ = (\f|d0|col_out~17_combout\ & ((\f|d0|col_five\(5)) # ((\f|d0|col_out[4]~16_combout\)))) # (!\f|d0|col_out~17_combout\ & (((!\f|d0|col_out[4]~16_combout\ & \f|d0|col_out~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out~17_combout\,
	datab => \f|d0|col_five\(5),
	datac => \f|d0|col_out[4]~16_combout\,
	datad => \f|d0|col_out~29_combout\,
	combout => \f|d0|col_out~30_combout\);

-- Location: LCCOMB_X54_Y2_N20
\f|d0|col_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~31_combout\ = (\f|d0|col_out[4]~16_combout\ & ((\f|d0|col_out~30_combout\ & (\f|d0|col_six\(5))) # (!\f|d0|col_out~30_combout\ & ((\f|d0|col_four\(5)))))) # (!\f|d0|col_out[4]~16_combout\ & (((\f|d0|col_out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_six\(5),
	datab => \f|d0|col_four\(5),
	datac => \f|d0|col_out[4]~16_combout\,
	datad => \f|d0|col_out~30_combout\,
	combout => \f|d0|col_out~31_combout\);

-- Location: LCCOMB_X53_Y2_N24
\f|d0|col_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~32_combout\ = (\f|d0|col_store\(7) & (\f|d0|col_seven\(5))) # (!\f|d0|col_store\(7) & ((\f|d0|col_out~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(7),
	datac => \f|d0|col_seven\(5),
	datad => \f|d0|col_out~31_combout\,
	combout => \f|d0|col_out~32_combout\);

-- Location: LCCOMB_X40_Y6_N24
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (Main_C(11)) # ((Main_C(9)) # ((Main_C(10)) # (!Main_C(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(11),
	datab => Main_C(9),
	datac => Main_C(8),
	datad => Main_C(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X41_Y5_N30
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (Main_C(24)) # ((Main_C(27)) # ((Main_C(26)) # (Main_C(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(24),
	datab => Main_C(27),
	datac => Main_C(26),
	datad => Main_C(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X54_Y3_N24
\f|d0|col_two~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_two~0_combout\ = (!\f|d0|col_two\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_two\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_two~0_combout\);

-- Location: LCCOMB_X54_Y2_N12
\f|d0|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add7~2_combout\ = \f|d0|col_seven\(5) $ (((!\f|d0|col_seven\(4) & !\f|d0|col_seven\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_seven\(4),
	datac => \f|d0|col_seven\(5),
	datad => \f|d0|col_seven\(3),
	combout => \f|d0|Add7~2_combout\);

-- Location: LCCOMB_X53_Y3_N8
\f|c0|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|Selector4~0_combout\ = (!\KEY~combout\(0) & ((\f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\) # ((\f|d0|valid~regout\ & \f|c0|current_state.S_LOAD_COLUMN_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|valid~regout\,
	datab => \f|c0|current_state.S_LOAD_COLUMN_2~regout\,
	datac => \f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\,
	datad => \KEY~combout\(0),
	combout => \f|c0|Selector4~0_combout\);

-- Location: LCCOMB_X57_Y3_N26
\f|d0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|WideOr4~0_combout\ = (\f|d0|col_store\(2) & (!\f|d0|col_store\(1) & (!\f|d0|col_store\(3) & !\f|d0|col_store\(0)))) # (!\f|d0|col_store\(2) & ((\f|d0|col_store\(1) & (!\f|d0|col_store\(3) & !\f|d0|col_store\(0))) # (!\f|d0|col_store\(1) & 
-- (\f|d0|col_store\(3) $ (\f|d0|col_store\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(2),
	datab => \f|d0|col_store\(1),
	datac => \f|d0|col_store\(3),
	datad => \f|d0|col_store\(0),
	combout => \f|d0|WideOr4~0_combout\);

-- Location: LCCOMB_X57_Y3_N12
\f|d0|not_set~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|not_set~4_combout\ = (\f|d0|col_store\(4) & (!\f|d0|col_store\(5) & (!\f|d0|col_store\(6) & !\f|d0|col_store\(7)))) # (!\f|d0|col_store\(4) & ((\f|d0|col_store\(5) & (!\f|d0|col_store\(6) & !\f|d0|col_store\(7))) # (!\f|d0|col_store\(5) & 
-- (\f|d0|col_store\(6) $ (\f|d0|col_store\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(4),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_store\(7),
	combout => \f|d0|not_set~4_combout\);

-- Location: LCCOMB_X57_Y3_N30
\f|d0|not_set~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|not_set~5_combout\ = (\f|d0|col_store\(4) & ((\f|d0|col_store\(5)) # ((\f|d0|col_store\(6)) # (\f|d0|col_store\(7))))) # (!\f|d0|col_store\(4) & ((\f|d0|col_store\(5) & ((\f|d0|col_store\(6)) # (\f|d0|col_store\(7)))) # (!\f|d0|col_store\(5) & 
-- (\f|d0|col_store\(6) & \f|d0|col_store\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(4),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_store\(7),
	combout => \f|d0|not_set~5_combout\);

-- Location: LCCOMB_X57_Y3_N24
\f|d0|not_set~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|not_set~6_combout\ = (\f|d0|not_set~4_combout\ & ((\f|d0|not_set~5_combout\ & ((\f|d0|WideOr4~0_combout\))) # (!\f|d0|not_set~5_combout\ & (\f|d0|not_set~2_combout\)))) # (!\f|d0|not_set~4_combout\ & (!\f|d0|not_set~5_combout\ & 
-- ((\f|d0|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|not_set~4_combout\,
	datab => \f|d0|not_set~5_combout\,
	datac => \f|d0|not_set~2_combout\,
	datad => \f|d0|WideOr4~0_combout\,
	combout => \f|d0|not_set~6_combout\);

-- Location: LCCOMB_X56_Y3_N6
\f|d0|not_set~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|not_set~7_combout\ = (\f|d0|not_set~regout\ & (\f|d0|not_set~6_combout\ & ((\f|c0|current_state.S_DRAW_1~regout\) # (\f|c0|current_state.S_DRAW_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|not_set~regout\,
	datab => \f|c0|current_state.S_DRAW_1~regout\,
	datac => \f|c0|current_state.S_DRAW_2~regout\,
	datad => \f|d0|not_set~6_combout\,
	combout => \f|d0|not_set~7_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X54_Y2_N2
\f|d0|col_seven~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_seven~2_combout\ = (!\f|d0|col_seven\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_seven\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_seven~2_combout\);

-- Location: LCCOMB_X56_Y3_N26
\f|d0|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~5_combout\ = (!\SW~combout\(0) & !\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	combout => \f|d0|Selector0~5_combout\);

-- Location: LCCOMB_X55_Y3_N22
\f|d0|Selector0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~15_combout\ = (!\SW~combout\(4) & (!\SW~combout\(2) & (!\SW~combout\(3) & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	datad => \SW~combout\(5),
	combout => \f|d0|Selector0~15_combout\);

-- Location: LCCOMB_X56_Y3_N20
\f|d0|col_store[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~9_combout\ = (\SW~combout\(6) & (((!\f|d0|Selector0~15_combout\)) # (!\f|d0|Selector0~5_combout\))) # (!\SW~combout\(6) & (\SW~combout\(7) & ((!\f|d0|Selector0~15_combout\) # (!\f|d0|Selector0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \f|d0|Selector0~5_combout\,
	datac => \SW~combout\(7),
	datad => \f|d0|Selector0~15_combout\,
	combout => \f|d0|col_store[6]~9_combout\);

-- Location: LCCOMB_X53_Y2_N8
\f|c0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|Selector2~0_combout\ = (\f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\ & ((\KEY~combout\(0)) # ((\f|c0|current_state.S_DRAW_1~regout\ & !\wren~0_combout\)))) # (!\f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\ & 
-- (((\f|c0|current_state.S_DRAW_1~regout\ & !\wren~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\,
	datab => \KEY~combout\(0),
	datac => \f|c0|current_state.S_DRAW_1~regout\,
	datad => \wren~0_combout\,
	combout => \f|c0|Selector2~0_combout\);

-- Location: LCFF_X53_Y2_N9
\f|c0|current_state.S_DRAW_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|c0|Selector2~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|c0|current_state.S_DRAW_1~regout\);

-- Location: LCCOMB_X53_Y3_N14
\f|c0|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|Selector3~0_combout\ = (\f|c0|current_state.S_LOAD_COLUMN_2~regout\ & ((\KEY~combout\(0)) # (!\f|d0|valid~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|valid~regout\,
	datab => \KEY~combout\(0),
	datac => \f|c0|current_state.S_LOAD_COLUMN_2~regout\,
	combout => \f|c0|Selector3~0_combout\);

-- Location: LCCOMB_X53_Y2_N28
\f|c0|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|Selector3~1_combout\ = (\f|c0|Selector3~0_combout\) # ((\f|c0|current_state.S_DRAW_1~regout\ & ((\data_in[1]~3_combout\) # (!\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \f|c0|current_state.S_DRAW_1~regout\,
	datac => \f|c0|Selector3~0_combout\,
	datad => \data_in[1]~3_combout\,
	combout => \f|c0|Selector3~1_combout\);

-- Location: LCFF_X53_Y2_N29
\f|c0|current_state.S_LOAD_COLUMN_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|c0|Selector3~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|c0|current_state.S_LOAD_COLUMN_2~regout\);

-- Location: LCCOMB_X54_Y2_N18
\f|d0|Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add7~1_combout\ = \f|d0|col_seven\(4) $ (!\f|d0|col_seven\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_seven\(4),
	datad => \f|d0|col_seven\(3),
	combout => \f|d0|Add7~1_combout\);

-- Location: LCFF_X54_Y2_N19
\f|d0|col_seven[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add7~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_seven[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_seven\(4));

-- Location: LCCOMB_X54_Y2_N0
\f|d0|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Equal7~0_combout\ = (!\f|d0|col_seven\(5) & (!\f|d0|col_seven\(4) & (!\f|d0|col_seven\(3) & !\f|d0|col_seven\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_seven\(5),
	datab => \f|d0|col_seven\(4),
	datac => \f|d0|col_seven\(3),
	datad => \f|d0|col_seven\(6),
	combout => \f|d0|Equal7~0_combout\);

-- Location: LCCOMB_X56_Y2_N18
\f|d0|col_six~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_six~0_combout\ = (!\f|d0|col_six\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_six\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_six~0_combout\);

-- Location: LCCOMB_X54_Y3_N6
\f|d0|col_store~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~22_combout\ = (!\SW~combout\(7) & \SW~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(7),
	datad => \SW~combout\(6),
	combout => \f|d0|col_store~22_combout\);

-- Location: LCFF_X54_Y3_N7
\f|d0|col_store[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~22_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(6));

-- Location: LCCOMB_X50_Y3_N10
\f|d0|col_store~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~21_combout\ = (!\SW~combout\(6) & (!\SW~combout\(5) & (\SW~combout\(4) & !\SW~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \SW~combout\(5),
	datac => \SW~combout\(4),
	datad => \SW~combout\(7),
	combout => \f|d0|col_store~21_combout\);

-- Location: LCFF_X50_Y3_N11
\f|d0|col_store[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~21_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(4));

-- Location: LCCOMB_X50_Y3_N28
\f|d0|col_store~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~25_combout\ = (\f|d0|Selector0~15_combout\ & (!\SW~combout\(7) & (!\SW~combout\(6) & !\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~15_combout\,
	datab => \SW~combout\(7),
	datac => \SW~combout\(6),
	datad => \SW~combout\(1),
	combout => \f|d0|col_store~25_combout\);

-- Location: LCFF_X50_Y3_N29
\f|d0|col_store[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~25_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(0));

-- Location: LCCOMB_X56_Y3_N28
\f|d0|col_store~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~8_combout\ = (!\SW~combout\(6) & !\SW~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datac => \SW~combout\(7),
	combout => \f|d0|col_store~8_combout\);

-- Location: LCCOMB_X51_Y3_N0
\f|d0|col_store~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~23_combout\ = (!\SW~combout\(4) & (!\SW~combout\(5) & (\f|d0|col_store~8_combout\ & \SW~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \SW~combout\(5),
	datac => \f|d0|col_store~8_combout\,
	datad => \SW~combout\(3),
	combout => \f|d0|col_store~23_combout\);

-- Location: LCFF_X51_Y3_N1
\f|d0|col_store[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~23_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(3));

-- Location: LCCOMB_X55_Y3_N20
\f|d0|Selector0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~14_combout\ = (!\SW~combout\(4) & !\SW~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(4),
	datad => \SW~combout\(5),
	combout => \f|d0|Selector0~14_combout\);

-- Location: LCCOMB_X51_Y3_N30
\f|d0|col_store~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~20_combout\ = (!\SW~combout\(3) & (\f|d0|Selector0~14_combout\ & (\f|d0|col_store~8_combout\ & \SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \f|d0|Selector0~14_combout\,
	datac => \f|d0|col_store~8_combout\,
	datad => \SW~combout\(2),
	combout => \f|d0|col_store~20_combout\);

-- Location: LCFF_X51_Y3_N31
\f|d0|col_store[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~20_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(2));

-- Location: LCCOMB_X50_Y3_N18
\f|d0|not_set~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|not_set~2_combout\ = (!\f|d0|col_store\(1) & (!\f|d0|col_store\(0) & (!\f|d0|col_store\(3) & !\f|d0|col_store\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(1),
	datab => \f|d0|col_store\(0),
	datac => \f|d0|col_store\(3),
	datad => \f|d0|col_store\(2),
	combout => \f|d0|not_set~2_combout\);

-- Location: LCCOMB_X53_Y3_N18
\f|c0|ld_column\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|ld_column~combout\ = (\f|c0|current_state.S_LOAD_COLUMN_2~regout\) # (!\f|c0|current_state.S_LOAD_COLUMN_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|c0|current_state.S_LOAD_COLUMN_2~regout\,
	datad => \f|c0|current_state.S_LOAD_COLUMN_1~regout\,
	combout => \f|c0|ld_column~combout\);

-- Location: LCCOMB_X56_Y3_N4
\f|d0|Selector9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~14_combout\ = (!\SW~combout\(1) & (!\SW~combout\(0) & (!\f|d0|Equal6~0_combout\ & \f|d0|Selector0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \f|d0|Equal6~0_combout\,
	datad => \f|d0|Selector0~15_combout\,
	combout => \f|d0|Selector9~14_combout\);

-- Location: LCCOMB_X56_Y3_N8
\f|d0|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~2_combout\ = (\f|d0|not_set~regout\) # ((\f|d0|Selector0~5_combout\ & (\f|d0|Selector0~15_combout\ & !\f|d0|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~5_combout\,
	datab => \f|d0|Selector0~15_combout\,
	datac => \f|d0|not_set~regout\,
	datad => \f|d0|Equal7~0_combout\,
	combout => \f|d0|Selector9~2_combout\);

-- Location: LCCOMB_X54_Y3_N30
\f|d0|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~2_combout\ = (!\SW~combout\(0) & (!\SW~combout\(1) & (!\SW~combout\(3) & !\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(1),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \f|d0|Selector0~2_combout\);

-- Location: LCCOMB_X54_Y3_N16
\f|d0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add2~0_combout\ = \f|d0|col_two\(3) $ (!\f|d0|col_two\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_two\(3),
	datac => \f|d0|col_two\(4),
	combout => \f|d0|Add2~0_combout\);

-- Location: LCCOMB_X57_Y3_N20
\f|d0|col_two[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_two[5]~1_combout\ = (\f|d0|col_store\(6)) # ((\f|d0|col_store\(7)) # ((\f|d0|col_store\(0)) # (!\f|d0|col_store\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(6),
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(2),
	datad => \f|d0|col_store\(0),
	combout => \f|d0|col_two[5]~1_combout\);

-- Location: LCCOMB_X54_Y3_N4
\f|d0|col_store~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~19_combout\ = (\SW~combout\(5) & (!\SW~combout\(7) & !\SW~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(5),
	datac => \SW~combout\(7),
	datad => \SW~combout\(6),
	combout => \f|d0|col_store~19_combout\);

-- Location: LCFF_X54_Y3_N5
\f|d0|col_store[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~19_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(5));

-- Location: LCCOMB_X57_Y3_N22
\f|d0|col_three[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_three[6]~6_combout\ = (!\f|d0|col_store\(1) & (!\f|d0|col_store\(5) & (!\f|d0|col_store\(4) & \f|d0|not_set~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(1),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(4),
	datad => \f|d0|not_set~3_combout\,
	combout => \f|d0|col_three[6]~6_combout\);

-- Location: LCCOMB_X57_Y3_N10
\f|d0|col_two[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_two[5]~2_combout\ = ((!\f|d0|col_store\(3) & (!\f|d0|col_two[5]~1_combout\ & \f|d0|col_three[6]~6_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(3),
	datab => \KEY~combout\(2),
	datac => \f|d0|col_two[5]~1_combout\,
	datad => \f|d0|col_three[6]~6_combout\,
	combout => \f|d0|col_two[5]~2_combout\);

-- Location: LCFF_X54_Y3_N17
\f|d0|col_two[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add2~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_two[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_two\(4));

-- Location: LCCOMB_X54_Y3_N10
\f|d0|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add2~1_combout\ = \f|d0|col_two\(5) $ (((!\f|d0|col_two\(3) & !\f|d0|col_two\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_two\(3),
	datac => \f|d0|col_two\(5),
	datad => \f|d0|col_two\(4),
	combout => \f|d0|Add2~1_combout\);

-- Location: LCFF_X54_Y3_N11
\f|d0|col_two[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add2~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_two[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_two\(5));

-- Location: LCCOMB_X54_Y3_N22
\f|d0|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Equal2~0_combout\ = (!\f|d0|col_two\(3) & (!\f|d0|col_two\(4) & !\f|d0|col_two\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_two\(3),
	datac => \f|d0|col_two\(4),
	datad => \f|d0|col_two\(5),
	combout => \f|d0|Equal2~0_combout\);

-- Location: LCCOMB_X54_Y3_N20
\f|d0|col_two~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_two~3_combout\ = (\f|d0|col_two\(6) $ (\f|d0|Equal2~0_combout\)) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(2),
	datac => \f|d0|col_two\(6),
	datad => \f|d0|Equal2~0_combout\,
	combout => \f|d0|col_two~3_combout\);

-- Location: LCFF_X54_Y3_N21
\f|d0|col_two[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_two~3_combout\,
	ena => \f|d0|col_two[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_two\(6));

-- Location: LCCOMB_X54_Y3_N26
\f|d0|Selector0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~12_combout\ = (\SW~combout\(0)) # ((\SW~combout\(1)) # ((!\f|d0|col_two\(6) & \f|d0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(1),
	datac => \f|d0|col_two\(6),
	datad => \f|d0|Equal2~0_combout\,
	combout => \f|d0|Selector0~12_combout\);

-- Location: LCCOMB_X55_Y3_N24
\f|d0|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~4_combout\ = (\SW~combout\(5) & (!\f|d0|Equal5~0_combout\ & (\f|d0|Selector0~2_combout\))) # (!\SW~combout\(5) & (((!\f|d0|Selector0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Equal5~0_combout\,
	datab => \SW~combout\(5),
	datac => \f|d0|Selector0~2_combout\,
	datad => \f|d0|Selector0~12_combout\,
	combout => \f|d0|Selector9~4_combout\);

-- Location: LCCOMB_X56_Y3_N24
\f|d0|Selector0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~10_combout\ = \SW~combout\(0) $ (\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	combout => \f|d0|Selector0~10_combout\);

-- Location: LCCOMB_X58_Y3_N24
\f|d0|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add3~1_combout\ = \f|d0|col_three\(3) $ (!\f|d0|col_three\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_three\(3),
	datac => \f|d0|col_three\(4),
	combout => \f|d0|Add3~1_combout\);

-- Location: LCCOMB_X57_Y3_N18
\f|d0|col_three[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_three[6]~2_combout\ = (!\f|d0|col_store\(6) & (!\f|d0|col_store\(7) & (!\f|d0|col_store\(2) & !\f|d0|col_store\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(6),
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(2),
	datad => \f|d0|col_store\(0),
	combout => \f|d0|col_three[6]~2_combout\);

-- Location: LCCOMB_X57_Y3_N0
\f|d0|col_three[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_three[6]~4_combout\ = ((\f|d0|col_store\(3) & (\f|d0|col_three[6]~6_combout\ & \f|d0|col_three[6]~2_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(3),
	datab => \KEY~combout\(2),
	datac => \f|d0|col_three[6]~6_combout\,
	datad => \f|d0|col_three[6]~2_combout\,
	combout => \f|d0|col_three[6]~4_combout\);

-- Location: LCFF_X58_Y3_N25
\f|d0|col_three[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add3~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_three[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_three\(4));

-- Location: LCCOMB_X58_Y3_N26
\f|d0|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add3~2_combout\ = \f|d0|col_three\(5) $ (((!\f|d0|col_three\(3) & !\f|d0|col_three\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_three\(3),
	datac => \f|d0|col_three\(5),
	datad => \f|d0|col_three\(4),
	combout => \f|d0|Add3~2_combout\);

-- Location: LCFF_X58_Y3_N27
\f|d0|col_three[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add3~2_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_three[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_three\(5));

-- Location: LCCOMB_X58_Y3_N20
\f|d0|col_three~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_three~3_combout\ = (!\f|d0|col_three\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_three\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_three~3_combout\);

-- Location: LCFF_X58_Y3_N21
\f|d0|col_three[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_three~3_combout\,
	ena => \f|d0|col_three[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_three\(3));

-- Location: LCCOMB_X58_Y3_N14
\f|d0|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add3~0_combout\ = \f|d0|col_three\(6) $ (((\f|d0|col_three\(4)) # ((\f|d0|col_three\(5)) # (\f|d0|col_three\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_three\(4),
	datab => \f|d0|col_three\(5),
	datac => \f|d0|col_three\(3),
	datad => \f|d0|col_three\(6),
	combout => \f|d0|Add3~0_combout\);

-- Location: LCCOMB_X58_Y3_N22
\f|d0|col_three~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_three~5_combout\ = (!\KEY~combout\(2)) # (!\f|d0|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|Add3~0_combout\,
	datad => \KEY~combout\(2),
	combout => \f|d0|col_three~5_combout\);

-- Location: LCFF_X58_Y3_N23
\f|d0|col_three[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_three~5_combout\,
	ena => \f|d0|col_three[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_three\(6));

-- Location: LCCOMB_X58_Y3_N16
\f|d0|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Equal3~0_combout\ = (!\f|d0|col_three\(3) & (!\f|d0|col_three\(6) & (!\f|d0|col_three\(4) & !\f|d0|col_three\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_three\(3),
	datab => \f|d0|col_three\(6),
	datac => \f|d0|col_three\(4),
	datad => \f|d0|col_three\(5),
	combout => \f|d0|Equal3~0_combout\);

-- Location: LCCOMB_X55_Y3_N6
\f|d0|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~3_combout\ = (\SW~combout\(3) & (((!\SW~combout\(2) & !\f|d0|Equal3~0_combout\)))) # (!\SW~combout\(3) & ((\f|d0|Selector0~10_combout\) # ((\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \f|d0|Selector0~10_combout\,
	datac => \SW~combout\(2),
	datad => \f|d0|Equal3~0_combout\,
	combout => \f|d0|Selector9~3_combout\);

-- Location: LCCOMB_X55_Y3_N14
\f|d0|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~5_combout\ = (\SW~combout\(5) & (((\f|d0|Selector9~4_combout\)))) # (!\SW~combout\(5) & (\f|d0|Selector9~3_combout\ & ((\f|d0|Selector9~4_combout\) # (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(2),
	datac => \f|d0|Selector9~4_combout\,
	datad => \f|d0|Selector9~3_combout\,
	combout => \f|d0|Selector9~5_combout\);

-- Location: LCCOMB_X55_Y2_N8
\f|d0|col_four~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_four~0_combout\ = (!\f|d0|col_four\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_four\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_four~0_combout\);

-- Location: LCCOMB_X56_Y2_N4
\f|d0|col_four[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_four[3]~1_combout\ = (!\f|d0|col_store\(6) & (!\f|d0|col_store\(7) & (\f|d0|not_set~2_combout\ & \f|d0|not_set~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(6),
	datab => \f|d0|col_store\(7),
	datac => \f|d0|not_set~2_combout\,
	datad => \f|d0|not_set~3_combout\,
	combout => \f|d0|col_four[3]~1_combout\);

-- Location: LCCOMB_X55_Y2_N16
\f|d0|col_four[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_four[3]~2_combout\ = ((!\f|d0|col_store\(5) & (\f|d0|col_store\(4) & \f|d0|col_four[3]~1_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(4),
	datad => \f|d0|col_four[3]~1_combout\,
	combout => \f|d0|col_four[3]~2_combout\);

-- Location: LCFF_X55_Y2_N9
\f|d0|col_four[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_four~0_combout\,
	ena => \f|d0|col_four[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_four\(3));

-- Location: LCCOMB_X55_Y2_N24
\f|d0|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add4~2_combout\ = \f|d0|col_four\(5) $ (((!\f|d0|col_four\(4) & !\f|d0|col_four\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_four\(4),
	datac => \f|d0|col_four\(5),
	datad => \f|d0|col_four\(3),
	combout => \f|d0|Add4~2_combout\);

-- Location: LCFF_X55_Y2_N25
\f|d0|col_four[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add4~2_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_four[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_four\(5));

-- Location: LCCOMB_X55_Y2_N30
\f|d0|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add4~1_combout\ = \f|d0|col_four\(4) $ (!\f|d0|col_four\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_four\(4),
	datad => \f|d0|col_four\(3),
	combout => \f|d0|Add4~1_combout\);

-- Location: LCFF_X55_Y2_N31
\f|d0|col_four[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add4~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_four[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_four\(4));

-- Location: LCCOMB_X55_Y2_N22
\f|d0|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Equal4~0_combout\ = (!\f|d0|col_four\(6) & (!\f|d0|col_four\(3) & (!\f|d0|col_four\(5) & !\f|d0|col_four\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_four\(6),
	datab => \f|d0|col_four\(3),
	datac => \f|d0|col_four\(5),
	datad => \f|d0|col_four\(4),
	combout => \f|d0|Equal4~0_combout\);

-- Location: LCCOMB_X55_Y3_N18
\f|d0|Selector9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~8_combout\ = (\SW~combout\(5)) # ((\SW~combout\(4) & ((\f|d0|Equal4~0_combout\))) # (!\SW~combout\(4) & (\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(2),
	datac => \SW~combout\(4),
	datad => \f|d0|Equal4~0_combout\,
	combout => \f|d0|Selector9~8_combout\);

-- Location: LCCOMB_X56_Y3_N30
\f|d0|Selector9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~6_combout\ = (\SW~combout\(0)) # (\SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	combout => \f|d0|Selector9~6_combout\);

-- Location: LCCOMB_X53_Y3_N30
\f|d0|col_one~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_one~3_combout\ = (\f|d0|Selector0~6_combout\ $ (\f|d0|col_one\(6))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~6_combout\,
	datac => \f|d0|col_one\(6),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_one~3_combout\);

-- Location: LCCOMB_X57_Y3_N16
\f|d0|col_out~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~13_combout\ = (!\f|d0|col_store\(5) & !\f|d0|col_store\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_store\(5),
	datad => \f|d0|col_store\(4),
	combout => \f|d0|col_out~13_combout\);

-- Location: LCCOMB_X57_Y3_N28
\f|d0|col_one[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_one[6]~1_combout\ = ((\f|d0|col_store\(3)) # (!\f|d0|col_three[6]~2_combout\)) # (!\f|d0|col_store\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(1),
	datac => \f|d0|col_store\(3),
	datad => \f|d0|col_three[6]~2_combout\,
	combout => \f|d0|col_one[6]~1_combout\);

-- Location: LCCOMB_X57_Y3_N14
\f|d0|col_one[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_one[6]~2_combout\ = ((\f|d0|not_set~3_combout\ & (\f|d0|col_out~13_combout\ & !\f|d0|col_one[6]~1_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|not_set~3_combout\,
	datab => \KEY~combout\(2),
	datac => \f|d0|col_out~13_combout\,
	datad => \f|d0|col_one[6]~1_combout\,
	combout => \f|d0|col_one[6]~2_combout\);

-- Location: LCFF_X53_Y3_N31
\f|d0|col_one[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_one~3_combout\,
	ena => \f|d0|col_one[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_one\(6));

-- Location: LCCOMB_X53_Y3_N20
\f|d0|col_one~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_one~0_combout\ = (!\f|d0|col_one\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_one\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_one~0_combout\);

-- Location: LCFF_X53_Y3_N21
\f|d0|col_one[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_one~0_combout\,
	ena => \f|d0|col_one[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_one\(3));

-- Location: LCCOMB_X53_Y3_N4
\f|d0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add1~0_combout\ = \f|d0|col_one\(4) $ (!\f|d0|col_one\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_one\(4),
	datad => \f|d0|col_one\(3),
	combout => \f|d0|Add1~0_combout\);

-- Location: LCFF_X53_Y3_N5
\f|d0|col_one[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add1~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_one[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_one\(4));

-- Location: LCCOMB_X53_Y3_N6
\f|d0|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add1~1_combout\ = \f|d0|col_one\(5) $ (((!\f|d0|col_one\(4) & !\f|d0|col_one\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_one\(4),
	datac => \f|d0|col_one\(5),
	datad => \f|d0|col_one\(3),
	combout => \f|d0|Add1~1_combout\);

-- Location: LCFF_X53_Y3_N7
\f|d0|col_one[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add1~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_one[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_one\(5));

-- Location: LCCOMB_X53_Y3_N24
\f|d0|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~6_combout\ = (!\f|d0|col_one\(4) & (!\f|d0|col_one\(3) & !\f|d0|col_one\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_one\(4),
	datac => \f|d0|col_one\(3),
	datad => \f|d0|col_one\(5),
	combout => \f|d0|Selector0~6_combout\);

-- Location: LCCOMB_X54_Y3_N0
\f|d0|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~7_combout\ = (\SW~combout\(1) & (!\f|d0|col_one\(6) & \f|d0|Selector0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \f|d0|col_one\(6),
	datad => \f|d0|Selector0~6_combout\,
	combout => \f|d0|Selector0~7_combout\);

-- Location: LCCOMB_X51_Y3_N8
\f|d0|col_zero~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_zero~0_combout\ = (\KEY~combout\(2) & !\f|d0|col_zero\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datac => \f|d0|col_zero\(3),
	combout => \f|d0|col_zero~0_combout\);

-- Location: LCCOMB_X50_Y3_N4
\f|d0|col_zero[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_zero[6]~1_combout\ = (\f|d0|col_store\(2)) # ((\f|d0|col_store\(7)) # ((\f|d0|col_store\(6)) # (!\f|d0|col_store\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(2),
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_store\(0),
	combout => \f|d0|col_zero[6]~1_combout\);

-- Location: LCCOMB_X50_Y3_N30
\f|d0|col_zero[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_zero[6]~2_combout\ = ((!\f|d0|col_store\(3) & (!\f|d0|col_zero[6]~1_combout\ & \f|d0|col_three[6]~6_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(3),
	datab => \f|d0|col_zero[6]~1_combout\,
	datac => \KEY~combout\(2),
	datad => \f|d0|col_three[6]~6_combout\,
	combout => \f|d0|col_zero[6]~2_combout\);

-- Location: LCFF_X51_Y3_N9
\f|d0|col_zero[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_zero~0_combout\,
	ena => \f|d0|col_zero[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_zero\(3));

-- Location: LCCOMB_X51_Y3_N24
\f|d0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add0~0_combout\ = \f|d0|col_zero\(4) $ (!\f|d0|col_zero\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_zero\(4),
	datad => \f|d0|col_zero\(3),
	combout => \f|d0|Add0~0_combout\);

-- Location: LCFF_X51_Y3_N25
\f|d0|col_zero[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add0~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_zero[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_zero\(4));

-- Location: LCCOMB_X51_Y3_N2
\f|d0|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add0~1_combout\ = \f|d0|col_zero\(5) $ (((!\f|d0|col_zero\(3) & !\f|d0|col_zero\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_zero\(3),
	datac => \f|d0|col_zero\(5),
	datad => \f|d0|col_zero\(4),
	combout => \f|d0|Add0~1_combout\);

-- Location: LCFF_X51_Y3_N3
\f|d0|col_zero[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add0~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_zero[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_zero\(5));

-- Location: LCCOMB_X51_Y3_N26
\f|d0|Selector0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~8_combout\ = (!\f|d0|col_zero\(3) & (!\f|d0|col_zero\(4) & !\f|d0|col_zero\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_zero\(3),
	datac => \f|d0|col_zero\(4),
	datad => \f|d0|col_zero\(5),
	combout => \f|d0|Selector0~8_combout\);

-- Location: LCCOMB_X51_Y3_N20
\f|d0|col_zero~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_zero~3_combout\ = (\f|d0|col_zero\(6) $ (\f|d0|Selector0~8_combout\)) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datac => \f|d0|col_zero\(6),
	datad => \f|d0|Selector0~8_combout\,
	combout => \f|d0|col_zero~3_combout\);

-- Location: LCFF_X51_Y3_N21
\f|d0|col_zero[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_zero~3_combout\,
	ena => \f|d0|col_zero[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_zero\(6));

-- Location: LCCOMB_X51_Y3_N6
\f|d0|Selector0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~9_combout\ = (!\SW~combout\(1) & (!\f|d0|col_zero\(6) & \f|d0|Selector0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => \f|d0|col_zero\(6),
	datad => \f|d0|Selector0~8_combout\,
	combout => \f|d0|Selector0~9_combout\);

-- Location: LCCOMB_X55_Y3_N0
\f|d0|Selector9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~7_combout\ = (\SW~combout\(3) & (\f|d0|Selector9~6_combout\)) # (!\SW~combout\(3) & (((\f|d0|Selector0~7_combout\) # (\f|d0|Selector0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \f|d0|Selector9~6_combout\,
	datac => \f|d0|Selector0~7_combout\,
	datad => \f|d0|Selector0~9_combout\,
	combout => \f|d0|Selector9~7_combout\);

-- Location: LCCOMB_X55_Y3_N12
\f|d0|Selector9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~9_combout\ = (\f|d0|Selector9~8_combout\ & (((!\SW~combout\(4))))) # (!\f|d0|Selector9~8_combout\ & ((\SW~combout\(4) & (\f|d0|Selector0~2_combout\)) # (!\SW~combout\(4) & ((!\f|d0|Selector9~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~2_combout\,
	datab => \f|d0|Selector9~8_combout\,
	datac => \SW~combout\(4),
	datad => \f|d0|Selector9~7_combout\,
	combout => \f|d0|Selector9~9_combout\);

-- Location: LCCOMB_X55_Y3_N2
\f|d0|Selector9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~10_combout\ = (\f|d0|not_set~regout\) # ((\f|d0|Selector9~9_combout\ & ((\SW~combout\(4)) # (\f|d0|Selector9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \f|d0|not_set~regout\,
	datac => \f|d0|Selector9~5_combout\,
	datad => \f|d0|Selector9~9_combout\,
	combout => \f|d0|Selector9~10_combout\);

-- Location: LCCOMB_X56_Y3_N12
\f|d0|Selector9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~11_combout\ = (\SW~combout\(6) & (\SW~combout\(7))) # (!\SW~combout\(6) & ((\SW~combout\(7) & (\f|d0|Selector9~2_combout\)) # (!\SW~combout\(7) & ((\f|d0|Selector9~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \SW~combout\(7),
	datac => \f|d0|Selector9~2_combout\,
	datad => \f|d0|Selector9~10_combout\,
	combout => \f|d0|Selector9~11_combout\);

-- Location: LCCOMB_X56_Y3_N22
\f|d0|Selector9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~12_combout\ = (\SW~combout\(6) & ((\f|d0|not_set~regout\) # ((\f|d0|Selector9~14_combout\ & !\f|d0|Selector9~11_combout\)))) # (!\SW~combout\(6) & (((\f|d0|Selector9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \f|d0|not_set~regout\,
	datac => \f|d0|Selector9~14_combout\,
	datad => \f|d0|Selector9~11_combout\,
	combout => \f|d0|Selector9~12_combout\);

-- Location: LCCOMB_X56_Y3_N14
\f|d0|Selector9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector9~13_combout\ = (!\f|d0|not_set~7_combout\ & ((\f|c0|ld_column~combout\ & ((\f|d0|Selector9~12_combout\))) # (!\f|c0|ld_column~combout\ & (\f|d0|not_set~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|not_set~7_combout\,
	datab => \f|c0|ld_column~combout\,
	datac => \f|d0|not_set~regout\,
	datad => \f|d0|Selector9~12_combout\,
	combout => \f|d0|Selector9~13_combout\);

-- Location: LCFF_X56_Y3_N15
\f|d0|not_set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Selector9~13_combout\,
	sdata => VCC,
	sload => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|not_set~regout\);

-- Location: LCCOMB_X56_Y3_N18
\f|d0|not_set~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|not_set~3_combout\ = (\f|d0|not_set~regout\ & ((\f|c0|current_state.S_DRAW_2~regout\) # (\f|c0|current_state.S_DRAW_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|not_set~regout\,
	datac => \f|c0|current_state.S_DRAW_2~regout\,
	datad => \f|c0|current_state.S_DRAW_1~regout\,
	combout => \f|d0|not_set~3_combout\);

-- Location: LCCOMB_X56_Y2_N30
\f|d0|col_seven[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_seven[6]~5_combout\ = (!\f|d0|col_store\(5) & (!\f|d0|col_store\(4) & (\f|d0|not_set~2_combout\ & \f|d0|not_set~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(5),
	datab => \f|d0|col_store\(4),
	datac => \f|d0|not_set~2_combout\,
	datad => \f|d0|not_set~3_combout\,
	combout => \f|d0|col_seven[6]~5_combout\);

-- Location: LCCOMB_X56_Y2_N12
\f|d0|col_six[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_six[3]~1_combout\ = ((!\f|d0|col_store\(7) & (\f|d0|col_store\(6) & \f|d0|col_seven[6]~5_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_seven[6]~5_combout\,
	combout => \f|d0|col_six[3]~1_combout\);

-- Location: LCFF_X56_Y2_N19
\f|d0|col_six[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_six~0_combout\,
	ena => \f|d0|col_six[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_six\(3));

-- Location: LCCOMB_X56_Y2_N6
\f|d0|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add6~2_combout\ = \f|d0|col_six\(5) $ (((!\f|d0|col_six\(4) & !\f|d0|col_six\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_six\(4),
	datac => \f|d0|col_six\(5),
	datad => \f|d0|col_six\(3),
	combout => \f|d0|Add6~2_combout\);

-- Location: LCFF_X56_Y2_N7
\f|d0|col_six[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add6~2_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_six[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_six\(5));

-- Location: LCCOMB_X56_Y2_N0
\f|d0|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add6~0_combout\ = \f|d0|col_six\(6) $ (((\f|d0|col_six\(4)) # ((\f|d0|col_six\(5)) # (\f|d0|col_six\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_six\(4),
	datab => \f|d0|col_six\(5),
	datac => \f|d0|col_six\(6),
	datad => \f|d0|col_six\(3),
	combout => \f|d0|Add6~0_combout\);

-- Location: LCCOMB_X56_Y2_N24
\f|d0|col_six~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_six~2_combout\ = (!\KEY~combout\(2)) # (!\f|d0|Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|Add6~0_combout\,
	datad => \KEY~combout\(2),
	combout => \f|d0|col_six~2_combout\);

-- Location: LCFF_X56_Y2_N25
\f|d0|col_six[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_six~2_combout\,
	ena => \f|d0|col_six[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_six\(6));

-- Location: LCCOMB_X56_Y2_N28
\f|d0|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add6~1_combout\ = \f|d0|col_six\(4) $ (!\f|d0|col_six\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_six\(4),
	datad => \f|d0|col_six\(3),
	combout => \f|d0|Add6~1_combout\);

-- Location: LCFF_X56_Y2_N29
\f|d0|col_six[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add6~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_six[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_six\(4));

-- Location: LCCOMB_X56_Y2_N10
\f|d0|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Equal6~0_combout\ = (!\f|d0|col_six\(5) & (!\f|d0|col_six\(3) & (!\f|d0|col_six\(6) & !\f|d0|col_six\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_six\(5),
	datab => \f|d0|col_six\(3),
	datac => \f|d0|col_six\(6),
	datad => \f|d0|col_six\(4),
	combout => \f|d0|Equal6~0_combout\);

-- Location: LCCOMB_X54_Y3_N28
\f|d0|col_store[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~10_combout\ = (\SW~combout\(6) & (((\SW~combout\(7)) # (\f|d0|Equal6~0_combout\)))) # (!\SW~combout\(6) & (\f|d0|Equal7~0_combout\ & (\SW~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \f|d0|Equal7~0_combout\,
	datac => \SW~combout\(7),
	datad => \f|d0|Equal6~0_combout\,
	combout => \f|d0|col_store[6]~10_combout\);

-- Location: LCCOMB_X54_Y3_N14
\f|d0|col_store[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~11_combout\ = (\f|d0|col_store[6]~9_combout\) # ((\f|d0|col_store[6]~10_combout\) # ((\f|c0|current_state.S_LOAD_COLUMN_1~regout\ & !\f|c0|current_state.S_LOAD_COLUMN_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|c0|current_state.S_LOAD_COLUMN_1~regout\,
	datab => \f|d0|col_store[6]~9_combout\,
	datac => \f|c0|current_state.S_LOAD_COLUMN_2~regout\,
	datad => \f|d0|col_store[6]~10_combout\,
	combout => \f|d0|col_store[6]~11_combout\);

-- Location: LCCOMB_X54_Y3_N18
\f|d0|Selector0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~16_combout\ = (\f|d0|Selector0~7_combout\) # ((\f|d0|Selector0~9_combout\) # (\SW~combout\(0) $ (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \f|d0|Selector0~7_combout\,
	datac => \SW~combout\(1),
	datad => \f|d0|Selector0~9_combout\,
	combout => \f|d0|Selector0~16_combout\);

-- Location: LCCOMB_X55_Y3_N16
\f|d0|col_store[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~12_combout\ = (\SW~combout\(3) & (((\SW~combout\(2)) # (\f|d0|Equal3~0_combout\)) # (!\f|d0|Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~5_combout\,
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	datad => \f|d0|Equal3~0_combout\,
	combout => \f|d0|col_store[6]~12_combout\);

-- Location: LCCOMB_X55_Y3_N8
\f|d0|col_store[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~14_combout\ = (!\f|d0|Selector0~2_combout\ & ((\SW~combout\(4)) # (\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \f|d0|Selector0~2_combout\,
	datad => \SW~combout\(5),
	combout => \f|d0|col_store[6]~14_combout\);

-- Location: LCCOMB_X56_Y2_N20
\f|d0|col_five~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_five~0_combout\ = (!\f|d0|col_five\(3) & \KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_five\(3),
	datad => \KEY~combout\(2),
	combout => \f|d0|col_five~0_combout\);

-- Location: LCCOMB_X56_Y2_N14
\f|d0|col_five[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_five[6]~1_combout\ = ((\f|d0|col_store\(5) & (!\f|d0|col_store\(4) & \f|d0|col_four[3]~1_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(5),
	datab => \f|d0|col_store\(4),
	datac => \f|d0|col_four[3]~1_combout\,
	datad => \KEY~combout\(2),
	combout => \f|d0|col_five[6]~1_combout\);

-- Location: LCFF_X56_Y2_N21
\f|d0|col_five[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_five~0_combout\,
	ena => \f|d0|col_five[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_five\(3));

-- Location: LCCOMB_X56_Y2_N16
\f|d0|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add5~1_combout\ = \f|d0|col_five\(4) $ (!\f|d0|col_five\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_five\(4),
	datad => \f|d0|col_five\(3),
	combout => \f|d0|Add5~1_combout\);

-- Location: LCFF_X56_Y2_N17
\f|d0|col_five[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add5~1_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_five[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_five\(4));

-- Location: LCCOMB_X56_Y2_N22
\f|d0|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add5~2_combout\ = \f|d0|col_five\(5) $ (((!\f|d0|col_five\(3) & !\f|d0|col_five\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_five\(3),
	datac => \f|d0|col_five\(5),
	datad => \f|d0|col_five\(4),
	combout => \f|d0|Add5~2_combout\);

-- Location: LCFF_X56_Y2_N23
\f|d0|col_five[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|Add5~2_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_five[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_five\(5));

-- Location: LCCOMB_X56_Y2_N26
\f|d0|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add5~0_combout\ = \f|d0|col_five\(6) $ (((\f|d0|col_five\(4)) # ((\f|d0|col_five\(3)) # (\f|d0|col_five\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_five\(4),
	datab => \f|d0|col_five\(3),
	datac => \f|d0|col_five\(5),
	datad => \f|d0|col_five\(6),
	combout => \f|d0|Add5~0_combout\);

-- Location: LCCOMB_X56_Y2_N8
\f|d0|col_five~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_five~2_combout\ = (!\KEY~combout\(2)) # (!\f|d0|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|Add5~0_combout\,
	datad => \KEY~combout\(2),
	combout => \f|d0|col_five~2_combout\);

-- Location: LCFF_X56_Y2_N9
\f|d0|col_five[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_five~2_combout\,
	ena => \f|d0|col_five[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_five\(6));

-- Location: LCCOMB_X56_Y2_N2
\f|d0|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Equal5~0_combout\ = (!\f|d0|col_five\(3) & (!\f|d0|col_five\(6) & (!\f|d0|col_five\(4) & !\f|d0|col_five\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_five\(3),
	datab => \f|d0|col_five\(6),
	datac => \f|d0|col_five\(4),
	datad => \f|d0|col_five\(5),
	combout => \f|d0|Equal5~0_combout\);

-- Location: LCCOMB_X55_Y3_N30
\f|d0|col_store[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~13_combout\ = (\SW~combout\(5) & ((\SW~combout\(4)) # ((\f|d0|Equal5~0_combout\)))) # (!\SW~combout\(5) & (\SW~combout\(4) & (\f|d0|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(4),
	datac => \f|d0|Equal4~0_combout\,
	datad => \f|d0|Equal5~0_combout\,
	combout => \f|d0|col_store[6]~13_combout\);

-- Location: LCCOMB_X54_Y3_N12
\f|d0|col_store[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~15_combout\ = (\f|d0|col_store[6]~14_combout\) # ((\f|d0|col_store[6]~13_combout\) # ((\SW~combout\(2) & \f|d0|Selector0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \f|d0|Selector0~12_combout\,
	datac => \f|d0|col_store[6]~14_combout\,
	datad => \f|d0|col_store[6]~13_combout\,
	combout => \f|d0|col_store[6]~15_combout\);

-- Location: LCCOMB_X54_Y3_N2
\f|d0|col_store[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~16_combout\ = (\f|d0|col_store[6]~12_combout\) # ((\f|d0|col_store[6]~15_combout\) # ((\f|d0|Selector0~15_combout\ & \f|d0|Selector0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~15_combout\,
	datab => \f|d0|Selector0~16_combout\,
	datac => \f|d0|col_store[6]~12_combout\,
	datad => \f|d0|col_store[6]~15_combout\,
	combout => \f|d0|col_store[6]~16_combout\);

-- Location: LCCOMB_X54_Y3_N8
\f|d0|col_store[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[6]~17_combout\ = ((!\f|d0|col_store[6]~11_combout\ & ((!\f|d0|col_store[6]~16_combout\) # (!\f|d0|col_store~8_combout\)))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store~8_combout\,
	datab => \KEY~combout\(2),
	datac => \f|d0|col_store[6]~11_combout\,
	datad => \f|d0|col_store[6]~16_combout\,
	combout => \f|d0|col_store[6]~17_combout\);

-- Location: LCCOMB_X50_Y3_N14
\f|d0|col_store[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store[7]~18_combout\ = (\f|d0|col_store[6]~17_combout\ & (\KEY~combout\(2) & (\SW~combout\(7)))) # (!\f|d0|col_store[6]~17_combout\ & (((\f|d0|col_store\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \SW~combout\(7),
	datac => \f|d0|col_store\(7),
	datad => \f|d0|col_store[6]~17_combout\,
	combout => \f|d0|col_store[7]~18_combout\);

-- Location: LCFF_X50_Y3_N15
\f|d0|col_store[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(7));

-- Location: LCCOMB_X55_Y2_N10
\f|d0|col_seven[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_seven[6]~3_combout\ = ((\f|d0|col_store\(7) & (!\f|d0|col_store\(6) & \f|d0|col_seven[6]~5_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_seven[6]~5_combout\,
	combout => \f|d0|col_seven[6]~3_combout\);

-- Location: LCFF_X54_Y2_N3
\f|d0|col_seven[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_seven~2_combout\,
	ena => \f|d0|col_seven[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_seven\(3));

-- Location: LCCOMB_X54_Y2_N26
\f|d0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add7~0_combout\ = \f|d0|col_seven\(6) $ (((\f|d0|col_seven\(5)) # ((\f|d0|col_seven\(3)) # (\f|d0|col_seven\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_seven\(5),
	datab => \f|d0|col_seven\(3),
	datac => \f|d0|col_seven\(4),
	datad => \f|d0|col_seven\(6),
	combout => \f|d0|Add7~0_combout\);

-- Location: LCCOMB_X54_Y2_N30
\f|d0|col_seven~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_seven~4_combout\ = (!\KEY~combout\(2)) # (!\f|d0|Add7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|Add7~0_combout\,
	datad => \KEY~combout\(2),
	combout => \f|d0|col_seven~4_combout\);

-- Location: LCFF_X54_Y2_N31
\f|d0|col_seven[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_seven~4_combout\,
	ena => \f|d0|col_seven[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_seven\(6));

-- Location: LCCOMB_X55_Y2_N14
\f|d0|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Add4~0_combout\ = \f|d0|col_four\(6) $ (((\f|d0|col_four\(3)) # ((\f|d0|col_four\(5)) # (\f|d0|col_four\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_four\(3),
	datab => \f|d0|col_four\(6),
	datac => \f|d0|col_four\(5),
	datad => \f|d0|col_four\(4),
	combout => \f|d0|Add4~0_combout\);

-- Location: LCCOMB_X55_Y2_N20
\f|d0|col_four~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_four~3_combout\ = (!\KEY~combout\(2)) # (!\f|d0|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|Add4~0_combout\,
	datad => \KEY~combout\(2),
	combout => \f|d0|col_four~3_combout\);

-- Location: LCFF_X55_Y2_N21
\f|d0|col_four[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_four~3_combout\,
	ena => \f|d0|col_four[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_four\(6));

-- Location: LCCOMB_X54_Y2_N4
\f|d0|col_out[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[4]~16_combout\ = (\f|d0|col_store\(6)) # ((\f|d0|col_store\(4) & !\f|d0|col_store\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(4),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(6),
	combout => \f|d0|col_out[4]~16_combout\);

-- Location: LCCOMB_X51_Y3_N14
\f|d0|col_out~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~12_combout\ = (\f|d0|col_store\(3)) # (\f|d0|col_store\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_store\(3),
	datad => \f|d0|col_store\(2),
	combout => \f|d0|col_out~12_combout\);

-- Location: LCCOMB_X50_Y3_N12
\f|d0|col_store~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_store~24_combout\ = (\f|d0|Selector0~15_combout\ & (!\SW~combout\(7) & (!\SW~combout\(6) & \SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~15_combout\,
	datab => \SW~combout\(7),
	datac => \SW~combout\(6),
	datad => \SW~combout\(1),
	combout => \f|d0|col_store~24_combout\);

-- Location: LCFF_X50_Y3_N13
\f|d0|col_store[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_store~24_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_store[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_store\(1));

-- Location: LCCOMB_X51_Y3_N28
\f|d0|col_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~0_combout\ = (\f|d0|col_store\(3)) # ((!\f|d0|col_store\(2) & \f|d0|col_store\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_store\(2),
	datac => \f|d0|col_store\(3),
	datad => \f|d0|col_store\(1),
	combout => \f|d0|col_out~0_combout\);

-- Location: LCCOMB_X51_Y3_N12
\f|d0|col_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~33_combout\ = (\f|d0|col_out~12_combout\ & (((\f|d0|col_out~0_combout\)))) # (!\f|d0|col_out~12_combout\ & ((\f|d0|col_out~0_combout\ & ((\f|d0|col_one\(6)))) # (!\f|d0|col_out~0_combout\ & (\f|d0|col_zero\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_zero\(6),
	datab => \f|d0|col_one\(6),
	datac => \f|d0|col_out~12_combout\,
	datad => \f|d0|col_out~0_combout\,
	combout => \f|d0|col_out~33_combout\);

-- Location: LCCOMB_X51_Y3_N22
\f|d0|col_out~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~34_combout\ = (\f|d0|col_out~12_combout\ & ((\f|d0|col_out~33_combout\ & ((\f|d0|col_three\(6)))) # (!\f|d0|col_out~33_combout\ & (\f|d0|col_two\(6))))) # (!\f|d0|col_out~12_combout\ & (((\f|d0|col_out~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_two\(6),
	datab => \f|d0|col_three\(6),
	datac => \f|d0|col_out~12_combout\,
	datad => \f|d0|col_out~33_combout\,
	combout => \f|d0|col_out~34_combout\);

-- Location: LCCOMB_X54_Y2_N22
\f|d0|col_out~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~35_combout\ = (\f|d0|col_out~17_combout\ & (((\f|d0|col_out[4]~16_combout\)))) # (!\f|d0|col_out~17_combout\ & ((\f|d0|col_out[4]~16_combout\ & (\f|d0|col_four\(6))) # (!\f|d0|col_out[4]~16_combout\ & ((\f|d0|col_out~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out~17_combout\,
	datab => \f|d0|col_four\(6),
	datac => \f|d0|col_out[4]~16_combout\,
	datad => \f|d0|col_out~34_combout\,
	combout => \f|d0|col_out~35_combout\);

-- Location: LCCOMB_X54_Y2_N28
\f|d0|col_out~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~36_combout\ = (\f|d0|col_out~17_combout\ & ((\f|d0|col_out~35_combout\ & ((\f|d0|col_six\(6)))) # (!\f|d0|col_out~35_combout\ & (\f|d0|col_five\(6))))) # (!\f|d0|col_out~17_combout\ & (((\f|d0|col_out~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out~17_combout\,
	datab => \f|d0|col_five\(6),
	datac => \f|d0|col_six\(6),
	datad => \f|d0|col_out~35_combout\,
	combout => \f|d0|col_out~36_combout\);

-- Location: LCCOMB_X53_Y2_N18
\f|d0|col_out~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~37_combout\ = (\f|d0|col_store\(7) & (\f|d0|col_seven\(6))) # (!\f|d0|col_store\(7) & ((\f|d0|col_out~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(7),
	datab => \f|d0|col_seven\(6),
	datad => \f|d0|col_out~36_combout\,
	combout => \f|d0|col_out~37_combout\);

-- Location: LCCOMB_X50_Y3_N22
\f|d0|col_out[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~8_combout\ = (\f|d0|col_store\(0) & (\f|d0|col_store\(1) $ (\f|d0|col_store\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(1),
	datab => \f|d0|col_store\(0),
	datad => \f|d0|col_store\(2),
	combout => \f|d0|col_out[2]~8_combout\);

-- Location: LCCOMB_X50_Y3_N8
\f|d0|col_out[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~9_combout\ = (\f|d0|col_store\(6)) # ((\f|d0|col_out[2]~8_combout\) # ((\f|d0|col_store\(3) & \f|d0|col_store\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(3),
	datab => \f|d0|col_store\(6),
	datac => \f|d0|col_store\(4),
	datad => \f|d0|col_out[2]~8_combout\,
	combout => \f|d0|col_out[2]~9_combout\);

-- Location: LCCOMB_X50_Y3_N26
\f|d0|col_out[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~6_combout\ = \f|d0|col_store\(4) $ (\f|d0|col_store\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(4),
	datac => \f|d0|col_store\(3),
	combout => \f|d0|col_out[2]~6_combout\);

-- Location: LCCOMB_X50_Y3_N24
\f|d0|col_out[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~7_combout\ = (\f|d0|col_store\(1) & (((\f|d0|col_store\(2)) # (\f|d0|col_out[2]~6_combout\)))) # (!\f|d0|col_store\(1) & (\f|d0|col_out[2]~6_combout\ $ (((!\f|d0|col_store\(0) & !\f|d0|col_store\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(1),
	datab => \f|d0|col_store\(0),
	datac => \f|d0|col_store\(2),
	datad => \f|d0|col_out[2]~6_combout\,
	combout => \f|d0|col_out[2]~7_combout\);

-- Location: LCCOMB_X50_Y3_N0
\f|d0|col_out[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~3_combout\ = (\f|d0|col_store\(5) & ((\f|d0|col_store\(7)) # (!\f|d0|col_store\(6)))) # (!\f|d0|col_store\(5) & ((\f|d0|col_store\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_store\(7),
	datac => \f|d0|col_store\(5),
	datad => \f|d0|col_store\(6),
	combout => \f|d0|col_out[2]~3_combout\);

-- Location: LCCOMB_X50_Y3_N2
\f|d0|col_out[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~4_combout\ = (\f|d0|col_store\(7) & ((\f|d0|col_store\(4)) # ((\f|d0|col_out[2]~3_combout\) # (!\f|d0|not_set~2_combout\)))) # (!\f|d0|col_store\(7) & (\f|d0|col_out[2]~3_combout\ & ((\f|d0|col_store\(4)) # (!\f|d0|not_set~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(4),
	datab => \f|d0|not_set~2_combout\,
	datac => \f|d0|col_store\(7),
	datad => \f|d0|col_out[2]~3_combout\,
	combout => \f|d0|col_out[2]~4_combout\);

-- Location: LCCOMB_X50_Y3_N6
\f|d0|col_out[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~10_combout\ = (\f|d0|col_out[2]~4_combout\) # ((\f|d0|col_out[2]~5_combout\ & ((\f|d0|col_out[2]~9_combout\) # (\f|d0|col_out[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out[2]~5_combout\,
	datab => \f|d0|col_out[2]~9_combout\,
	datac => \f|d0|col_out[2]~7_combout\,
	datad => \f|d0|col_out[2]~4_combout\,
	combout => \f|d0|col_out[2]~10_combout\);

-- Location: LCCOMB_X54_Y2_N8
\f|d0|col_out[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out[2]~11_combout\ = ((!\f|d0|col_out[2]~10_combout\ & ((\f|c0|current_state.S_DRAW_2~regout\) # (\f|c0|current_state.S_DRAW_1~regout\)))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \f|c0|current_state.S_DRAW_2~regout\,
	datac => \f|c0|current_state.S_DRAW_1~regout\,
	datad => \f|d0|col_out[2]~10_combout\,
	combout => \f|d0|col_out[2]~11_combout\);

-- Location: LCFF_X53_Y2_N19
\f|d0|col_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~37_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(6));

-- Location: LCCOMB_X51_Y2_N6
\address[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[0]~7_combout\ = address(0) $ (VCC)
-- \address[0]~8\ = CARRY(address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datad => VCC,
	combout => \address[0]~7_combout\,
	cout => \address[0]~8\);

-- Location: LCCOMB_X51_Y2_N8
\address[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[1]~11_combout\ = (address(1) & (!\address[0]~8\)) # (!address(1) & ((\address[0]~8\) # (GND)))
-- \address[1]~12\ = CARRY((!\address[0]~8\) # (!address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address(1),
	datad => VCC,
	cin => \address[0]~8\,
	combout => \address[1]~11_combout\,
	cout => \address[1]~12\);

-- Location: LCCOMB_X51_Y2_N16
\address[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[5]~19_combout\ = (address(5) & (!\address[4]~18\)) # (!address(5) & ((\address[4]~18\) # (GND)))
-- \address[5]~20\ = CARRY((!\address[4]~18\) # (!address(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address(5),
	datad => VCC,
	cin => \address[4]~18\,
	combout => \address[5]~19_combout\,
	cout => \address[5]~20\);

-- Location: LCFF_X51_Y2_N17
\address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[5]~19_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(5));

-- Location: LCCOMB_X51_Y2_N0
\H3|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Decoder0~2_combout\ = (!address(4) & (!address(5) & address(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(4),
	datac => address(5),
	datad => address(6),
	combout => \H3|Decoder0~2_combout\);

-- Location: LCCOMB_X51_Y2_N12
\address[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[3]~15_combout\ = (address(3) & (!\address[2]~14\)) # (!address(3) & ((\address[2]~14\) # (GND)))
-- \address[3]~16\ = CARRY((!\address[2]~14\) # (!address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datad => VCC,
	cin => \address[2]~14\,
	combout => \address[3]~15_combout\,
	cout => \address[3]~16\);

-- Location: LCFF_X51_Y2_N13
\address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[3]~15_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(3));

-- Location: LCCOMB_X51_Y2_N2
\address[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[2]~9_combout\ = (address(2)) # ((address(1)) # (address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datac => address(1),
	datad => address(3),
	combout => \address[2]~9_combout\);

-- Location: LCCOMB_X51_Y2_N28
\address[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[2]~10_combout\ = ((!address(0) & (\H3|Decoder0~2_combout\ & !\address[2]~9_combout\))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(0),
	datab => \H3|Decoder0~2_combout\,
	datac => \KEY~combout\(2),
	datad => \address[2]~9_combout\,
	combout => \address[2]~10_combout\);

-- Location: LCFF_X51_Y2_N9
\address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[1]~11_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(1));

-- Location: LCCOMB_X51_Y2_N10
\address[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[2]~13_combout\ = (address(2) & (\address[1]~12\ $ (GND))) # (!address(2) & (!\address[1]~12\ & VCC))
-- \address[2]~14\ = CARRY((address(2) & !\address[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datad => VCC,
	cin => \address[1]~12\,
	combout => \address[2]~13_combout\,
	cout => \address[2]~14\);

-- Location: LCCOMB_X51_Y2_N14
\address[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[4]~17_combout\ = (address(4) & (\address[3]~16\ $ (GND))) # (!address(4) & (!\address[3]~16\ & VCC))
-- \address[4]~18\ = CARRY((address(4) & !\address[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address(4),
	datad => VCC,
	cin => \address[3]~16\,
	combout => \address[4]~17_combout\,
	cout => \address[4]~18\);

-- Location: LCFF_X51_Y2_N15
\address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[4]~17_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(4));

-- Location: LCCOMB_X51_Y2_N18
\address[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \address[6]~21_combout\ = \address[5]~20\ $ (!address(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => address(6),
	cin => \address[5]~20\,
	combout => \address[6]~21_combout\);

-- Location: LCFF_X51_Y2_N19
\address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[6]~21_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(6));

-- Location: LCCOMB_X53_Y2_N2
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = \f|d0|col_out\(6) $ (address(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_out\(6),
	datad => address(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X55_Y2_N6
\f|d0|col_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~17_combout\ = (\f|d0|col_store\(6)) # (\f|d0|col_store\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_store\(5),
	combout => \f|d0|col_out~17_combout\);

-- Location: LCCOMB_X51_Y3_N4
\f|d0|col_out~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~23_combout\ = (\f|d0|col_out~12_combout\ & (((\f|d0|col_out~0_combout\)))) # (!\f|d0|col_out~12_combout\ & ((\f|d0|col_out~0_combout\ & (\f|d0|col_one\(4))) # (!\f|d0|col_out~0_combout\ & ((\f|d0|col_zero\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_one\(4),
	datab => \f|d0|col_zero\(4),
	datac => \f|d0|col_out~12_combout\,
	datad => \f|d0|col_out~0_combout\,
	combout => \f|d0|col_out~23_combout\);

-- Location: LCCOMB_X55_Y2_N12
\f|d0|col_out~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~24_combout\ = (\f|d0|col_out~12_combout\ & ((\f|d0|col_out~23_combout\ & (\f|d0|col_three\(4))) # (!\f|d0|col_out~23_combout\ & ((\f|d0|col_two\(4)))))) # (!\f|d0|col_out~12_combout\ & (((\f|d0|col_out~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_three\(4),
	datab => \f|d0|col_two\(4),
	datac => \f|d0|col_out~12_combout\,
	datad => \f|d0|col_out~23_combout\,
	combout => \f|d0|col_out~24_combout\);

-- Location: LCCOMB_X55_Y2_N2
\f|d0|col_out~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~25_combout\ = (\f|d0|col_out~17_combout\ & (\f|d0|col_out[4]~16_combout\)) # (!\f|d0|col_out~17_combout\ & ((\f|d0|col_out[4]~16_combout\ & ((\f|d0|col_four\(4)))) # (!\f|d0|col_out[4]~16_combout\ & (\f|d0|col_out~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out~17_combout\,
	datab => \f|d0|col_out[4]~16_combout\,
	datac => \f|d0|col_out~24_combout\,
	datad => \f|d0|col_four\(4),
	combout => \f|d0|col_out~25_combout\);

-- Location: LCCOMB_X55_Y2_N28
\f|d0|col_out~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~26_combout\ = (\f|d0|col_out~17_combout\ & ((\f|d0|col_out~25_combout\ & (\f|d0|col_six\(4))) # (!\f|d0|col_out~25_combout\ & ((\f|d0|col_five\(4)))))) # (!\f|d0|col_out~17_combout\ & (((\f|d0|col_out~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_six\(4),
	datab => \f|d0|col_out~17_combout\,
	datac => \f|d0|col_five\(4),
	datad => \f|d0|col_out~25_combout\,
	combout => \f|d0|col_out~26_combout\);

-- Location: LCCOMB_X54_Y2_N24
\f|d0|col_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~27_combout\ = (\f|d0|col_store\(7) & (\f|d0|col_seven\(4))) # (!\f|d0|col_store\(7) & ((\f|d0|col_out~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_seven\(4),
	datac => \f|d0|col_store\(7),
	datad => \f|d0|col_out~26_combout\,
	combout => \f|d0|col_out~27_combout\);

-- Location: LCFF_X54_Y2_N25
\f|d0|col_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~27_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(4));

-- Location: LCCOMB_X53_Y2_N4
\data_in[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_in[1]~2_combout\ = (\f|d0|col_out\(5) & (address(5) & (address(4) $ (!\f|d0|col_out\(4))))) # (!\f|d0|col_out\(5) & (!address(5) & (address(4) $ (!\f|d0|col_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(5),
	datab => address(5),
	datac => address(4),
	datad => \f|d0|col_out\(4),
	combout => \data_in[1]~2_combout\);

-- Location: LCCOMB_X53_Y2_N16
\f|d0|col_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~14_combout\ = (\f|d0|col_store\(6)) # ((\f|d0|col_store\(7)) # ((\f|d0|col_out~12_combout\ & \f|d0|col_out~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(6),
	datab => \f|d0|col_out~12_combout\,
	datac => \f|d0|col_out~13_combout\,
	datad => \f|d0|col_store\(7),
	combout => \f|d0|col_out~14_combout\);

-- Location: LCFF_X53_Y2_N17
\f|d0|col_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~14_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(1));

-- Location: LCFF_X51_Y2_N7
\address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[0]~7_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(0));

-- Location: LCCOMB_X53_Y2_N12
\data_in[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_in[1]~0_combout\ = (\f|d0|col_out\(0) & (address(0) & (\f|d0|col_out\(1) $ (!address(1))))) # (!\f|d0|col_out\(0) & (!address(0) & (\f|d0|col_out\(1) $ (!address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(0),
	datab => \f|d0|col_out\(1),
	datac => address(1),
	datad => address(0),
	combout => \data_in[1]~0_combout\);

-- Location: LCCOMB_X53_Y2_N0
\data_in[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_in[1]~3_combout\ = (\data_in[1]~1_combout\ & (!\Equal2~0_combout\ & (\data_in[1]~2_combout\ & \data_in[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \data_in[1]~2_combout\,
	datad => \data_in[1]~0_combout\,
	combout => \data_in[1]~3_combout\);

-- Location: LCCOMB_X53_Y2_N26
\wren~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wren~0_combout\ = (\data_in[1]~3_combout\) # (!\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(1),
	datad => \data_in[1]~3_combout\,
	combout => \wren~0_combout\);

-- Location: LCCOMB_X53_Y2_N22
\f|c0|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|Selector5~0_combout\ = (\f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\ & ((\KEY~combout\(0)) # ((\f|c0|current_state.S_DRAW_2~regout\ & !\wren~0_combout\)))) # (!\f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\ & 
-- (((\f|c0|current_state.S_DRAW_2~regout\ & !\wren~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|c0|current_state.S_LOAD_COLUMN_WAIT_2~regout\,
	datab => \KEY~combout\(0),
	datac => \f|c0|current_state.S_DRAW_2~regout\,
	datad => \wren~0_combout\,
	combout => \f|c0|Selector5~0_combout\);

-- Location: LCFF_X53_Y2_N23
\f|c0|current_state.S_DRAW_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|c0|Selector5~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|c0|current_state.S_DRAW_2~regout\);

-- Location: LCCOMB_X55_Y3_N28
\f|d0|Selector0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~11_combout\ = (\SW~combout\(3) & (!\f|d0|Equal3~0_combout\ & (\f|d0|Selector0~5_combout\))) # (!\SW~combout\(3) & (((!\f|d0|Selector0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Equal3~0_combout\,
	datab => \SW~combout\(3),
	datac => \f|d0|Selector0~5_combout\,
	datad => \f|d0|Selector0~16_combout\,
	combout => \f|d0|Selector0~11_combout\);

-- Location: LCCOMB_X55_Y3_N26
\f|d0|Selector0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|Selector0~13_combout\ = (\SW~combout\(2) & (!\SW~combout\(3) & (!\f|d0|Selector0~12_combout\))) # (!\SW~combout\(2) & (((\f|d0|Selector0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \f|d0|Selector0~12_combout\,
	datac => \SW~combout\(2),
	datad => \f|d0|Selector0~11_combout\,
	combout => \f|d0|Selector0~13_combout\);

-- Location: LCCOMB_X56_Y3_N2
\f|d0|valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|valid~0_combout\ = (\f|d0|col_store~8_combout\ & ((\f|d0|Selector0~4_combout\) # ((\f|d0|Selector0~14_combout\ & \f|d0|Selector0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|Selector0~4_combout\,
	datab => \f|d0|col_store~8_combout\,
	datac => \f|d0|Selector0~14_combout\,
	datad => \f|d0|Selector0~13_combout\,
	combout => \f|d0|valid~0_combout\);

-- Location: LCCOMB_X56_Y3_N0
\f|d0|valid~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|valid~3_combout\ = (\f|c0|ld_column~combout\ & ((\f|d0|valid~2_combout\) # ((\f|d0|valid~0_combout\)))) # (!\f|c0|ld_column~combout\ & (((\f|d0|valid~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|valid~2_combout\,
	datab => \f|c0|ld_column~combout\,
	datac => \f|d0|valid~regout\,
	datad => \f|d0|valid~0_combout\,
	combout => \f|d0|valid~3_combout\);

-- Location: LCFF_X56_Y3_N1
\f|d0|valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|valid~3_combout\,
	sdata => VCC,
	sload => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|valid~regout\);

-- Location: LCCOMB_X55_Y2_N26
\f|c0|current_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|current_state~11_combout\ = ((!\f|c0|current_state.S_LOAD_COLUMN_1~regout\ & ((\KEY~combout\(0)) # (!\f|d0|valid~regout\)))) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \f|c0|current_state.S_LOAD_COLUMN_1~regout\,
	datac => \KEY~combout\(0),
	datad => \f|d0|valid~regout\,
	combout => \f|c0|current_state~11_combout\);

-- Location: LCCOMB_X53_Y2_N30
\f|c0|current_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|current_state~12_combout\ = (!\f|c0|current_state~11_combout\ & (((\KEY~combout\(1) & !\data_in[1]~3_combout\)) # (!\f|c0|current_state.S_DRAW_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \f|c0|current_state.S_DRAW_2~regout\,
	datac => \f|c0|current_state~11_combout\,
	datad => \data_in[1]~3_combout\,
	combout => \f|c0|current_state~12_combout\);

-- Location: LCFF_X53_Y2_N31
\f|c0|current_state.S_LOAD_COLUMN_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|c0|current_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|c0|current_state.S_LOAD_COLUMN_1~regout\);

-- Location: LCCOMB_X55_Y2_N0
\f|c0|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|Selector1~0_combout\ = (!\KEY~combout\(0) & ((\f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\) # ((!\f|c0|current_state.S_LOAD_COLUMN_1~regout\ & \f|d0|valid~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \f|c0|current_state.S_LOAD_COLUMN_1~regout\,
	datac => \f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\,
	datad => \f|d0|valid~regout\,
	combout => \f|c0|Selector1~0_combout\);

-- Location: LCFF_X55_Y2_N1
\f|c0|current_state.S_LOAD_COLUMN_WAIT_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|c0|Selector1~0_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\);

-- Location: LCCOMB_X54_Y2_N10
\f|c0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|c0|WideOr6~0_combout\ = (!\f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\ & (\f|c0|current_state.S_LOAD_COLUMN_1~regout\ & !\f|c0|current_state.S_DRAW_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|c0|current_state.S_LOAD_COLUMN_WAIT_1~regout\,
	datac => \f|c0|current_state.S_LOAD_COLUMN_1~regout\,
	datad => \f|c0|current_state.S_DRAW_1~regout\,
	combout => \f|c0|WideOr6~0_combout\);

-- Location: LCCOMB_X41_Y6_N4
\Main_C[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[0]~28_combout\ = Main_C(0) $ (VCC)
-- \Main_C[0]~29\ = CARRY(Main_C(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Main_C(0),
	datad => VCC,
	combout => \Main_C[0]~28_combout\,
	cout => \Main_C[0]~29\);

-- Location: LCCOMB_X40_Y6_N30
\Main_C[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[2]~30_combout\ = (!\Equal0~8_combout\) # (!\KEY~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	datad => \Equal0~8_combout\,
	combout => \Main_C[2]~30_combout\);

-- Location: LCFF_X41_Y6_N5
\Main_C[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[0]~28_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(0));

-- Location: LCCOMB_X41_Y6_N8
\Main_C[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[2]~33_combout\ = (Main_C(2) & (\Main_C[1]~32\ $ (GND))) # (!Main_C(2) & (!\Main_C[1]~32\ & VCC))
-- \Main_C[2]~34\ = CARRY((Main_C(2) & !\Main_C[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(2),
	datad => VCC,
	cin => \Main_C[1]~32\,
	combout => \Main_C[2]~33_combout\,
	cout => \Main_C[2]~34\);

-- Location: LCFF_X41_Y6_N9
\Main_C[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[2]~33_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(2));

-- Location: LCCOMB_X41_Y6_N10
\Main_C[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[3]~35_combout\ = (Main_C(3) & (!\Main_C[2]~34\)) # (!Main_C(3) & ((\Main_C[2]~34\) # (GND)))
-- \Main_C[3]~36\ = CARRY((!\Main_C[2]~34\) # (!Main_C(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(3),
	datad => VCC,
	cin => \Main_C[2]~34\,
	combout => \Main_C[3]~35_combout\,
	cout => \Main_C[3]~36\);

-- Location: LCCOMB_X41_Y6_N14
\Main_C[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[5]~39_combout\ = (Main_C(5) & (!\Main_C[4]~38\)) # (!Main_C(5) & ((\Main_C[4]~38\) # (GND)))
-- \Main_C[5]~40\ = CARRY((!\Main_C[4]~38\) # (!Main_C(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(5),
	datad => VCC,
	cin => \Main_C[4]~38\,
	combout => \Main_C[5]~39_combout\,
	cout => \Main_C[5]~40\);

-- Location: LCFF_X41_Y6_N15
\Main_C[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[5]~39_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(5));

-- Location: LCCOMB_X41_Y6_N16
\Main_C[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[6]~41_combout\ = (Main_C(6) & (\Main_C[5]~40\ $ (GND))) # (!Main_C(6) & (!\Main_C[5]~40\ & VCC))
-- \Main_C[6]~42\ = CARRY((Main_C(6) & !\Main_C[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(6),
	datad => VCC,
	cin => \Main_C[5]~40\,
	combout => \Main_C[6]~41_combout\,
	cout => \Main_C[6]~42\);

-- Location: LCCOMB_X41_Y6_N18
\Main_C[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[7]~43_combout\ = (Main_C(7) & (!\Main_C[6]~42\)) # (!Main_C(7) & ((\Main_C[6]~42\) # (GND)))
-- \Main_C[7]~44\ = CARRY((!\Main_C[6]~42\) # (!Main_C(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(7),
	datad => VCC,
	cin => \Main_C[6]~42\,
	combout => \Main_C[7]~43_combout\,
	cout => \Main_C[7]~44\);

-- Location: LCFF_X41_Y6_N19
\Main_C[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[7]~43_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(7));

-- Location: LCCOMB_X41_Y6_N22
\Main_C[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[9]~47_combout\ = (Main_C(9) & (!\Main_C[8]~46\)) # (!Main_C(9) & ((\Main_C[8]~46\) # (GND)))
-- \Main_C[9]~48\ = CARRY((!\Main_C[8]~46\) # (!Main_C(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(9),
	datad => VCC,
	cin => \Main_C[8]~46\,
	combout => \Main_C[9]~47_combout\,
	cout => \Main_C[9]~48\);

-- Location: LCFF_X41_Y6_N23
\Main_C[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[9]~47_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(9));

-- Location: LCCOMB_X41_Y6_N26
\Main_C[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[11]~51_combout\ = (Main_C(11) & (!\Main_C[10]~50\)) # (!Main_C(11) & ((\Main_C[10]~50\) # (GND)))
-- \Main_C[11]~52\ = CARRY((!\Main_C[10]~50\) # (!Main_C(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(11),
	datad => VCC,
	cin => \Main_C[10]~50\,
	combout => \Main_C[11]~51_combout\,
	cout => \Main_C[11]~52\);

-- Location: LCFF_X41_Y6_N27
\Main_C[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[11]~51_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(11));

-- Location: LCCOMB_X41_Y6_N28
\Main_C[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[12]~53_combout\ = (Main_C(12) & (\Main_C[11]~52\ $ (GND))) # (!Main_C(12) & (!\Main_C[11]~52\ & VCC))
-- \Main_C[12]~54\ = CARRY((Main_C(12) & !\Main_C[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(12),
	datad => VCC,
	cin => \Main_C[11]~52\,
	combout => \Main_C[12]~53_combout\,
	cout => \Main_C[12]~54\);

-- Location: LCFF_X41_Y6_N29
\Main_C[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[12]~53_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(12));

-- Location: LCCOMB_X41_Y6_N30
\Main_C[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[13]~55_combout\ = (Main_C(13) & (!\Main_C[12]~54\)) # (!Main_C(13) & ((\Main_C[12]~54\) # (GND)))
-- \Main_C[13]~56\ = CARRY((!\Main_C[12]~54\) # (!Main_C(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(13),
	datad => VCC,
	cin => \Main_C[12]~54\,
	combout => \Main_C[13]~55_combout\,
	cout => \Main_C[13]~56\);

-- Location: LCFF_X40_Y6_N17
\Main_C[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \Main_C[13]~55_combout\,
	sclr => \Main_C[2]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(13));

-- Location: LCCOMB_X41_Y5_N2
\Main_C[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[15]~59_combout\ = (Main_C(15) & (!\Main_C[14]~58\)) # (!Main_C(15) & ((\Main_C[14]~58\) # (GND)))
-- \Main_C[15]~60\ = CARRY((!\Main_C[14]~58\) # (!Main_C(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(15),
	datad => VCC,
	cin => \Main_C[14]~58\,
	combout => \Main_C[15]~59_combout\,
	cout => \Main_C[15]~60\);

-- Location: LCFF_X40_Y6_N3
\Main_C[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \Main_C[15]~59_combout\,
	sclr => \Main_C[2]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(15));

-- Location: LCCOMB_X41_Y5_N4
\Main_C[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[16]~61_combout\ = (Main_C(16) & (\Main_C[15]~60\ $ (GND))) # (!Main_C(16) & (!\Main_C[15]~60\ & VCC))
-- \Main_C[16]~62\ = CARRY((Main_C(16) & !\Main_C[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(16),
	datad => VCC,
	cin => \Main_C[15]~60\,
	combout => \Main_C[16]~61_combout\,
	cout => \Main_C[16]~62\);

-- Location: LCFF_X41_Y5_N5
\Main_C[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[16]~61_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(16));

-- Location: LCCOMB_X41_Y5_N6
\Main_C[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[17]~63_combout\ = (Main_C(17) & (!\Main_C[16]~62\)) # (!Main_C(17) & ((\Main_C[16]~62\) # (GND)))
-- \Main_C[17]~64\ = CARRY((!\Main_C[16]~62\) # (!Main_C(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(17),
	datad => VCC,
	cin => \Main_C[16]~62\,
	combout => \Main_C[17]~63_combout\,
	cout => \Main_C[17]~64\);

-- Location: LCCOMB_X41_Y5_N8
\Main_C[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[18]~65_combout\ = (Main_C(18) & (\Main_C[17]~64\ $ (GND))) # (!Main_C(18) & (!\Main_C[17]~64\ & VCC))
-- \Main_C[18]~66\ = CARRY((Main_C(18) & !\Main_C[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(18),
	datad => VCC,
	cin => \Main_C[17]~64\,
	combout => \Main_C[18]~65_combout\,
	cout => \Main_C[18]~66\);

-- Location: LCFF_X41_Y5_N9
\Main_C[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[18]~65_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(18));

-- Location: LCCOMB_X41_Y5_N12
\Main_C[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[20]~69_combout\ = (Main_C(20) & (\Main_C[19]~68\ $ (GND))) # (!Main_C(20) & (!\Main_C[19]~68\ & VCC))
-- \Main_C[20]~70\ = CARRY((Main_C(20) & !\Main_C[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(20),
	datad => VCC,
	cin => \Main_C[19]~68\,
	combout => \Main_C[20]~69_combout\,
	cout => \Main_C[20]~70\);

-- Location: LCCOMB_X41_Y5_N14
\Main_C[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Main_C[21]~71_combout\ = (Main_C(21) & (!\Main_C[20]~70\)) # (!Main_C(21) & ((\Main_C[20]~70\) # (GND)))
-- \Main_C[21]~72\ = CARRY((!\Main_C[20]~70\) # (!Main_C(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Main_C(21),
	datad => VCC,
	cin => \Main_C[20]~70\,
	combout => \Main_C[21]~71_combout\,
	cout => \Main_C[21]~72\);

-- Location: LCFF_X41_Y5_N15
\Main_C[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[21]~71_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(21));

-- Location: LCFF_X41_Y5_N19
\Main_C[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[23]~75_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(23));

-- Location: LCFF_X40_Y6_N19
\Main_C[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \Main_C[20]~69_combout\,
	sclr => \Main_C[2]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(20));

-- Location: LCCOMB_X40_Y6_N22
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (Main_C(22)) # ((Main_C(23)) # ((Main_C(21)) # (Main_C(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(22),
	datab => Main_C(23),
	datac => Main_C(21),
	datad => Main_C(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X40_Y6_N28
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (Main_C(14)) # (((Main_C(13)) # (Main_C(12))) # (!Main_C(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(14),
	datab => Main_C(15),
	datac => Main_C(13),
	datad => Main_C(12),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X41_Y6_N11
\Main_C[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[3]~35_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(3));

-- Location: LCCOMB_X41_Y6_N0
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Main_C(1)) # ((Main_C(0)) # ((Main_C(2)) # (Main_C(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(1),
	datab => Main_C(0),
	datac => Main_C(2),
	datad => Main_C(3),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X41_Y6_N17
\Main_C[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[6]~41_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(6));

-- Location: LCCOMB_X41_Y6_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (Main_C(4)) # ((Main_C(5)) # ((Main_C(6)) # (Main_C(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(4),
	datab => Main_C(5),
	datac => Main_C(6),
	datad => Main_C(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X40_Y6_N14
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\) # ((\Equal0~3_combout\) # ((\Equal0~0_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCFF_X41_Y5_N7
\Main_C[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Main_C[17]~63_combout\,
	sclr => \Main_C[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Main_C(17));

-- Location: LCCOMB_X41_Y5_N28
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (Main_C(19)) # ((Main_C(16)) # ((Main_C(18)) # (Main_C(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Main_C(19),
	datab => Main_C(16),
	datac => Main_C(18),
	datad => Main_C(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y6_N10
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\) # ((\Equal0~6_combout\) # ((\Equal0~4_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X40_Y6_N8
\Ram_C~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ram_C~0_combout\ = (\KEY~combout\(2) & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	datad => \Equal0~8_combout\,
	combout => \Ram_C~0_combout\);

-- Location: LCFF_X40_Y6_N9
Ram_C : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Ram_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ram_C~regout\);

-- Location: CLKCTRL_G13
\Ram_C~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ram_C~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ram_C~clkctrl_outclk\);

-- Location: LCCOMB_X53_Y2_N20
\data_in[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_in[1]~4_combout\ = (\KEY~combout\(1) & (!\f|c0|WideOr6~0_combout\ & \data_in[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datac => \f|c0|WideOr6~0_combout\,
	datad => \data_in[1]~3_combout\,
	combout => \data_in[1]~4_combout\);

-- Location: LCFF_X51_Y2_N11
\address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Ram_C~clkctrl_outclk\,
	datain => \address[2]~13_combout\,
	sclr => \address[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => address(2));

-- Location: LCCOMB_X53_Y2_N6
\data_in[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_in[2]~5_combout\ = (\KEY~combout\(1) & (\f|c0|WideOr6~0_combout\ & \data_in[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datac => \f|c0|WideOr6~0_combout\,
	datad => \data_in[1]~3_combout\,
	combout => \data_in[2]~5_combout\);

-- Location: M4K_X52_Y3
\r_2|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:r_2|altsyncram:altsyncram_component|altsyncram_ujd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 19,
	port_a_write_enable_clear => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \Ram_C~clkctrl_outclk\,
	portadatain => \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \r_2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y2
\r|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:r|altsyncram:altsyncram_component|altsyncram_ujd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 19,
	port_a_write_enable_clear => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \wren~0_combout\,
	clk0 => \Ram_C~clkctrl_outclk\,
	portadatain => \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \r|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \r|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y14_N8
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(18)) # ((!\r|altsyncram_component|auto_generated|q_a\(2) & !\r|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(1),
	datad => \r|altsyncram_component|auto_generated|q_a\(18),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X61_Y14_N8
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(17)) # ((!\r|altsyncram_component|auto_generated|q_a\(2) & !\r|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(17),
	datad => \r|altsyncram_component|auto_generated|q_a\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X57_Y14_N22
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(16)) # ((!\r|altsyncram_component|auto_generated|q_a\(2) & !\r|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(1),
	datad => \r|altsyncram_component|auto_generated|q_a\(16),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X57_Y14_N28
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(15)) # ((!\r|altsyncram_component|auto_generated|q_a\(1) & !\r|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(15),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X61_Y14_N6
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(1) & ((\r|altsyncram_component|auto_generated|q_a\(10)))) # (!\r|altsyncram_component|auto_generated|q_a\(1) & (!\r|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(10),
	datad => \r|altsyncram_component|auto_generated|q_a\(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X61_Y14_N12
\GPIO_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(9) & \r|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(9),
	datad => \r|altsyncram_component|auto_generated|q_a\(1),
	combout => \GPIO_0~0_combout\);

-- Location: LCCOMB_X61_Y14_N14
\GPIO_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~1_combout\ = (\r|altsyncram_component|auto_generated|q_a\(8) & \r|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(8),
	datad => \r|altsyncram_component|auto_generated|q_a\(1),
	combout => \GPIO_0~1_combout\);

-- Location: LCCOMB_X57_Y14_N30
\GPIO_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~2_combout\ = (\r|altsyncram_component|auto_generated|q_a\(1) & \r|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datac => \r|altsyncram_component|auto_generated|q_a\(7),
	combout => \GPIO_0~2_combout\);

-- Location: LCCOMB_X57_Y14_N0
\GPIO_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~3_combout\ = (\r|altsyncram_component|auto_generated|q_a\(1) & \r|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datac => \r|altsyncram_component|auto_generated|q_a\(6),
	combout => \GPIO_0~3_combout\);

-- Location: LCCOMB_X57_Y14_N26
\GPIO_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~4_combout\ = (\r|altsyncram_component|auto_generated|q_a\(1) & \r|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datac => \r|altsyncram_component|auto_generated|q_a\(5),
	combout => \GPIO_0~4_combout\);

-- Location: LCCOMB_X61_Y14_N24
\GPIO_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~5_combout\ = (\r|altsyncram_component|auto_generated|q_a\(4) & \r|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(4),
	datad => \r|altsyncram_component|auto_generated|q_a\(1),
	combout => \GPIO_0~5_combout\);

-- Location: LCCOMB_X57_Y14_N20
\GPIO_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_0~6_combout\ = (\r|altsyncram_component|auto_generated|q_a\(1) & \r|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datac => \r|altsyncram_component|auto_generated|q_a\(3),
	combout => \GPIO_0~6_combout\);

-- Location: LCCOMB_X57_Y14_N2
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(14)) # ((!\r|altsyncram_component|auto_generated|q_a\(1) & !\r|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(14),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X57_Y14_N12
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(13)) # ((!\r|altsyncram_component|auto_generated|q_a\(1) & !\r|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(13),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X57_Y14_N10
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(12)) # ((!\r|altsyncram_component|auto_generated|q_a\(1) & !\r|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(12),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X57_Y14_N24
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(11)) # ((!\r|altsyncram_component|auto_generated|q_a\(1) & !\r|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|altsyncram_component|auto_generated|q_a\(1),
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(11),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X61_Y14_N18
\GPIO_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(10) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(10),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~0_combout\);

-- Location: LCCOMB_X61_Y14_N0
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\r|altsyncram_component|auto_generated|q_a\(2) & (\r|altsyncram_component|auto_generated|q_a\(9))) # (!\r|altsyncram_component|auto_generated|q_a\(2) & ((!\r|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|altsyncram_component|auto_generated|q_a\(2),
	datac => \r|altsyncram_component|auto_generated|q_a\(9),
	datad => \r|altsyncram_component|auto_generated|q_a\(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X61_Y14_N26
\GPIO_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~1_combout\ = (\r|altsyncram_component|auto_generated|q_a\(8) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(8),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~1_combout\);

-- Location: LCCOMB_X57_Y14_N6
\GPIO_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~2_combout\ = (\r|altsyncram_component|auto_generated|q_a\(7) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(7),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~2_combout\);

-- Location: LCCOMB_X57_Y14_N4
\GPIO_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~3_combout\ = (\r|altsyncram_component|auto_generated|q_a\(6) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(6),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~3_combout\);

-- Location: LCCOMB_X57_Y14_N18
\GPIO_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~4_combout\ = (\r|altsyncram_component|auto_generated|q_a\(5) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(5),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~4_combout\);

-- Location: LCCOMB_X61_Y14_N16
\GPIO_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~5_combout\ = (\r|altsyncram_component|auto_generated|q_a\(4) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(4),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~5_combout\);

-- Location: LCCOMB_X57_Y14_N16
\GPIO_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \GPIO_1~6_combout\ = (\r|altsyncram_component|auto_generated|q_a\(3) & \r|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|altsyncram_component|auto_generated|q_a\(3),
	datad => \r|altsyncram_component|auto_generated|q_a\(2),
	combout => \GPIO_1~6_combout\);

-- Location: LCCOMB_X51_Y3_N18
\f|d0|col_out~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~18_combout\ = (\f|d0|col_out~12_combout\ & ((\f|d0|col_two\(3)) # ((\f|d0|col_out~0_combout\)))) # (!\f|d0|col_out~12_combout\ & (((\f|d0|col_zero\(3) & !\f|d0|col_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_two\(3),
	datab => \f|d0|col_zero\(3),
	datac => \f|d0|col_out~12_combout\,
	datad => \f|d0|col_out~0_combout\,
	combout => \f|d0|col_out~18_combout\);

-- Location: LCCOMB_X51_Y3_N16
\f|d0|col_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~19_combout\ = (\f|d0|col_out~0_combout\ & ((\f|d0|col_out~18_combout\ & ((\f|d0|col_three\(3)))) # (!\f|d0|col_out~18_combout\ & (\f|d0|col_one\(3))))) # (!\f|d0|col_out~0_combout\ & (((\f|d0|col_out~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_one\(3),
	datab => \f|d0|col_out~0_combout\,
	datac => \f|d0|col_three\(3),
	datad => \f|d0|col_out~18_combout\,
	combout => \f|d0|col_out~19_combout\);

-- Location: LCCOMB_X55_Y2_N4
\f|d0|col_out~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~20_combout\ = (\f|d0|col_out~17_combout\ & ((\f|d0|col_five\(3)) # ((\f|d0|col_out[4]~16_combout\)))) # (!\f|d0|col_out~17_combout\ & (((!\f|d0|col_out[4]~16_combout\ & \f|d0|col_out~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_five\(3),
	datab => \f|d0|col_out~17_combout\,
	datac => \f|d0|col_out[4]~16_combout\,
	datad => \f|d0|col_out~19_combout\,
	combout => \f|d0|col_out~20_combout\);

-- Location: LCCOMB_X55_Y2_N18
\f|d0|col_out~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~21_combout\ = (\f|d0|col_out[4]~16_combout\ & ((\f|d0|col_out~20_combout\ & (\f|d0|col_six\(3))) # (!\f|d0|col_out~20_combout\ & ((\f|d0|col_four\(3)))))) # (!\f|d0|col_out[4]~16_combout\ & (((\f|d0|col_out~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_six\(3),
	datab => \f|d0|col_out[4]~16_combout\,
	datac => \f|d0|col_out~20_combout\,
	datad => \f|d0|col_four\(3),
	combout => \f|d0|col_out~21_combout\);

-- Location: LCCOMB_X54_Y2_N14
\f|d0|col_out~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~22_combout\ = (\f|d0|col_store\(7) & (\f|d0|col_seven\(3))) # (!\f|d0|col_store\(7) & ((\f|d0|col_out~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f|d0|col_seven\(3),
	datac => \f|d0|col_store\(7),
	datad => \f|d0|col_out~21_combout\,
	combout => \f|d0|col_out~22_combout\);

-- Location: LCFF_X54_Y2_N15
\f|d0|col_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~22_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(3));

-- Location: LCCOMB_X54_Y2_N16
\f|d0|col_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~15_combout\ = (\f|d0|col_store\(6)) # ((\f|d0|col_store\(5)) # ((\f|d0|col_store\(7)) # (\f|d0|col_store\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(6),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(7),
	datad => \f|d0|col_store\(4),
	combout => \f|d0|col_out~15_combout\);

-- Location: LCFF_X54_Y2_N17
\f|d0|col_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~15_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(2));

-- Location: LCCOMB_X50_Y3_N16
\f|d0|col_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~1_combout\ = (!\f|d0|col_store\(6) & ((\f|d0|col_store\(5)) # ((!\f|d0|col_store\(4) & \f|d0|col_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_store\(4),
	datab => \f|d0|col_store\(5),
	datac => \f|d0|col_store\(6),
	datad => \f|d0|col_out~0_combout\,
	combout => \f|d0|col_out~1_combout\);

-- Location: LCCOMB_X53_Y2_N14
\f|d0|col_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f|d0|col_out~2_combout\ = (\f|d0|col_out~1_combout\) # (\f|d0|col_store\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f|d0|col_out~1_combout\,
	datad => \f|d0|col_store\(7),
	combout => \f|d0|col_out~2_combout\);

-- Location: LCFF_X53_Y2_N15
\f|d0|col_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \f|d0|col_out~2_combout\,
	sclr => \ALT_INV_KEY~combout\(2),
	ena => \f|d0|col_out[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f|d0|col_out\(0));

-- Location: LCCOMB_X28_Y2_N12
\H0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = (\f|d0|col_out\(3) & (\f|d0|col_out\(0) & (\f|d0|col_out\(1) $ (\f|d0|col_out\(2))))) # (!\f|d0|col_out\(3) & (!\f|d0|col_out\(1) & (\f|d0|col_out\(2) $ (\f|d0|col_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y2_N6
\H0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = (\f|d0|col_out\(1) & ((\f|d0|col_out\(0) & (\f|d0|col_out\(3))) # (!\f|d0|col_out\(0) & ((\f|d0|col_out\(2)))))) # (!\f|d0|col_out\(1) & (\f|d0|col_out\(2) & (\f|d0|col_out\(3) $ (\f|d0|col_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y2_N0
\H0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = (\f|d0|col_out\(3) & (\f|d0|col_out\(2) & ((\f|d0|col_out\(1)) # (!\f|d0|col_out\(0))))) # (!\f|d0|col_out\(3) & (\f|d0|col_out\(1) & (!\f|d0|col_out\(2) & !\f|d0|col_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y2_N22
\H0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = (\f|d0|col_out\(0) & (\f|d0|col_out\(1) $ (((!\f|d0|col_out\(2)))))) # (!\f|d0|col_out\(0) & ((\f|d0|col_out\(1) & (\f|d0|col_out\(3) & !\f|d0|col_out\(2))) # (!\f|d0|col_out\(1) & (!\f|d0|col_out\(3) & \f|d0|col_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y2_N20
\H0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = (\f|d0|col_out\(1) & (!\f|d0|col_out\(3) & ((\f|d0|col_out\(0))))) # (!\f|d0|col_out\(1) & ((\f|d0|col_out\(2) & (!\f|d0|col_out\(3))) # (!\f|d0|col_out\(2) & ((\f|d0|col_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y2_N18
\H0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = (\f|d0|col_out\(1) & (!\f|d0|col_out\(3) & ((\f|d0|col_out\(0)) # (!\f|d0|col_out\(2))))) # (!\f|d0|col_out\(1) & (\f|d0|col_out\(0) & (\f|d0|col_out\(3) $ (!\f|d0|col_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y2_N16
\H0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = (\f|d0|col_out\(0) & ((\f|d0|col_out\(3)) # (\f|d0|col_out\(1) $ (\f|d0|col_out\(2))))) # (!\f|d0|col_out\(0) & ((\f|d0|col_out\(1)) # (\f|d0|col_out\(3) $ (\f|d0|col_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f|d0|col_out\(1),
	datab => \f|d0|col_out\(3),
	datac => \f|d0|col_out\(2),
	datad => \f|d0|col_out\(0),
	combout => \H0|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y3_N16
\H1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(9) & (!\r_2|altsyncram_component|auto_generated|q_a\(8) & (\r_2|altsyncram_component|auto_generated|q_a\(7) $ (!\r_2|altsyncram_component|auto_generated|q_a\(10))))) # 
-- (!\r_2|altsyncram_component|auto_generated|q_a\(9) & (\r_2|altsyncram_component|auto_generated|q_a\(7) & (\r_2|altsyncram_component|auto_generated|q_a\(8) $ (!\r_2|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y3_N14
\H1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(8) & ((\r_2|altsyncram_component|auto_generated|q_a\(7) & ((\r_2|altsyncram_component|auto_generated|q_a\(10)))) # (!\r_2|altsyncram_component|auto_generated|q_a\(7) & 
-- (\r_2|altsyncram_component|auto_generated|q_a\(9))))) # (!\r_2|altsyncram_component|auto_generated|q_a\(8) & (\r_2|altsyncram_component|auto_generated|q_a\(9) & (\r_2|altsyncram_component|auto_generated|q_a\(7) $ 
-- (\r_2|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y3_N0
\H1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(9) & (\r_2|altsyncram_component|auto_generated|q_a\(10) & ((\r_2|altsyncram_component|auto_generated|q_a\(8)) # (!\r_2|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (!\r_2|altsyncram_component|auto_generated|q_a\(9) & (!\r_2|altsyncram_component|auto_generated|q_a\(7) & (\r_2|altsyncram_component|auto_generated|q_a\(8) & !\r_2|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y3_N2
\H1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(7) & (\r_2|altsyncram_component|auto_generated|q_a\(9) $ ((!\r_2|altsyncram_component|auto_generated|q_a\(8))))) # (!\r_2|altsyncram_component|auto_generated|q_a\(7) & 
-- ((\r_2|altsyncram_component|auto_generated|q_a\(9) & (!\r_2|altsyncram_component|auto_generated|q_a\(8) & !\r_2|altsyncram_component|auto_generated|q_a\(10))) # (!\r_2|altsyncram_component|auto_generated|q_a\(9) & 
-- (\r_2|altsyncram_component|auto_generated|q_a\(8) & \r_2|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y3_N28
\H1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(8) & (((\r_2|altsyncram_component|auto_generated|q_a\(7) & !\r_2|altsyncram_component|auto_generated|q_a\(10))))) # (!\r_2|altsyncram_component|auto_generated|q_a\(8) & 
-- ((\r_2|altsyncram_component|auto_generated|q_a\(9) & ((!\r_2|altsyncram_component|auto_generated|q_a\(10)))) # (!\r_2|altsyncram_component|auto_generated|q_a\(9) & (\r_2|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y3_N22
\H1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(9) & (\r_2|altsyncram_component|auto_generated|q_a\(7) & (\r_2|altsyncram_component|auto_generated|q_a\(8) $ (\r_2|altsyncram_component|auto_generated|q_a\(10))))) # 
-- (!\r_2|altsyncram_component|auto_generated|q_a\(9) & (!\r_2|altsyncram_component|auto_generated|q_a\(10) & ((\r_2|altsyncram_component|auto_generated|q_a\(7)) # (\r_2|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y3_N12
\H1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = (\r_2|altsyncram_component|auto_generated|q_a\(7) & ((\r_2|altsyncram_component|auto_generated|q_a\(10)) # (\r_2|altsyncram_component|auto_generated|q_a\(9) $ (\r_2|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\r_2|altsyncram_component|auto_generated|q_a\(7) & ((\r_2|altsyncram_component|auto_generated|q_a\(8)) # (\r_2|altsyncram_component|auto_generated|q_a\(9) $ (\r_2|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_2|altsyncram_component|auto_generated|q_a\(9),
	datab => \r_2|altsyncram_component|auto_generated|q_a\(7),
	datac => \r_2|altsyncram_component|auto_generated|q_a\(8),
	datad => \r_2|altsyncram_component|auto_generated|q_a\(10),
	combout => \H1|WideOr0~0_combout\);

-- Location: LCCOMB_X53_Y3_N2
\H2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr6~0_combout\ = (address(2) & (!address(1) & (address(3) $ (!address(0))))) # (!address(2) & (address(0) & (address(3) $ (!address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr6~0_combout\);

-- Location: LCCOMB_X53_Y3_N28
\H2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr5~0_combout\ = (address(3) & ((address(0) & ((address(1)))) # (!address(0) & (address(2))))) # (!address(3) & (address(2) & (address(1) $ (address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr5~0_combout\);

-- Location: LCCOMB_X53_Y3_N10
\H2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr4~0_combout\ = (address(2) & (address(3) & ((address(1)) # (!address(0))))) # (!address(2) & (!address(3) & (address(1) & !address(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr4~0_combout\);

-- Location: LCCOMB_X53_Y3_N12
\H2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr3~0_combout\ = (address(0) & (address(2) $ (((!address(1)))))) # (!address(0) & ((address(2) & (!address(3) & !address(1))) # (!address(2) & (address(3) & address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr3~0_combout\);

-- Location: LCCOMB_X53_Y3_N22
\H2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr2~0_combout\ = (address(1) & (((!address(3) & address(0))))) # (!address(1) & ((address(2) & (!address(3))) # (!address(2) & ((address(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr2~0_combout\);

-- Location: LCCOMB_X53_Y3_N0
\H2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr1~0_combout\ = (address(2) & (address(0) & (address(3) $ (address(1))))) # (!address(2) & (!address(3) & ((address(1)) # (address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr1~0_combout\);

-- Location: LCCOMB_X53_Y3_N26
\H2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H2|WideOr0~0_combout\ = (address(0) & ((address(3)) # (address(2) $ (address(1))))) # (!address(0) & ((address(1)) # (address(2) $ (address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(3),
	datac => address(1),
	datad => address(0),
	combout => \H2|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y8_N24
\H3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr6~0_combout\ = (address(4) & (address(6) $ (address(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(6),
	datac => address(4),
	datad => address(5),
	combout => \H3|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\H3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr5~0_combout\ = (address(4) & ((address(5)))) # (!address(4) & (address(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(6),
	datac => address(4),
	datad => address(5),
	combout => \H3|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\H3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr4~0_combout\ = ((address(4) & !address(5))) # (!address(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(6),
	datac => address(4),
	datad => address(5),
	combout => \H3|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\H3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|WideOr3~0_combout\ = (address(6) & (address(4) & address(5))) # (!address(6) & (address(4) $ (address(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(6),
	datac => address(4),
	datad => address(5),
	combout => \H3|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\H3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Decoder0~0_combout\ = (!address(6) & (address(4) & !address(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(6),
	datac => address(4),
	datad => address(5),
	combout => \H3|Decoder0~0_combout\);

-- Location: LCCOMB_X64_Y8_N2
\H3|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \H3|Decoder0~1_combout\ = (address(6) & (address(4) & !address(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(6),
	datac => address(4),
	datad => address(5),
	combout => \H3|Decoder0~1_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \f|c0|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \f|c0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(0));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(1));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(2));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(8));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(9));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(11));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(12));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(14));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(15));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(16));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(17));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(18));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(19));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(20));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(22));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(23));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(24));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(25));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_0(26));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(2));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(3));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(5));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(6));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(7));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(8));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(9));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(10));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(11));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(12));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(13));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(14));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(15));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(16));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(17));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(18));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(19));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(20));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(21));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(22));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(23));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GPIO_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(24));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(25));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GPIO_1(26));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H0|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|ALT_INV_WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \H3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));
END structure;


