-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "12/29/2023 02:06:57"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TLAB3 IS
    PORT (
	Multiplicand : IN std_logic_vector(3 DOWNTO 0);
	Multiplier : IN std_logic_vector(3 DOWNTO 0);
	MCLK : IN std_logic;
	Reset : IN std_logic;
	Start : IN std_logic;
	Ready : BUFFER std_logic;
	Product : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TLAB3;

-- Design Ports Information
-- Ready	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Product[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplicand[0]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplicand[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplicand[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplicand[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TLAB3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Multiplicand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Multiplier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Ready : std_logic;
SIGNAL ww_Product : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Ready~output_o\ : std_logic;
SIGNAL \Product[0]~output_o\ : std_logic;
SIGNAL \Product[1]~output_o\ : std_logic;
SIGNAL \Product[2]~output_o\ : std_logic;
SIGNAL \Product[3]~output_o\ : std_logic;
SIGNAL \Product[4]~output_o\ : std_logic;
SIGNAL \Product[5]~output_o\ : std_logic;
SIGNAL \Product[6]~output_o\ : std_logic;
SIGNAL \Product[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \inst_asm|U2|rom~3_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_asm|U0|Q~q\ : std_logic;
SIGNAL \inst_asm|U2|rom~4_combout\ : std_logic;
SIGNAL \inst_asm|U1|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \inst_asm|U2|rom~1_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_reg|U0|Q~q\ : std_logic;
SIGNAL \inst_asm|U2|rom~2_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_reg|U1|Q~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_reg|U1|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_reg|U2|Q~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_reg|U2|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_counter|U_comparer|TC~0_combout\ : std_logic;
SIGNAL \inst_asm|U2|rom~0_combout\ : std_logic;
SIGNAL \Multiplier[0]~input_o\ : std_logic;
SIGNAL \Multiplicand[3]~input_o\ : std_logic;
SIGNAL \inst_asm|U2|rom~7_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_reg|U3|Q~q\ : std_logic;
SIGNAL \Multiplicand[2]~input_o\ : std_logic;
SIGNAL \inst_DataPath|inst_reg|U2|Q~q\ : std_logic;
SIGNAL \Multiplicand[0]~input_o\ : std_logic;
SIGNAL \inst_DataPath|inst_reg|U0|Q~q\ : std_logic;
SIGNAL \Multiplicand[1]~input_o\ : std_logic;
SIGNAL \inst_DataPath|inst_reg|U1|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_adder|FA1|Cout~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_adder|FA2|Cout~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_mux1|Sout~0_combout\ : std_logic;
SIGNAL \inst_asm|U2|rom~5_combout\ : std_logic;
SIGNAL \inst_asm|U2|rom~6_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_ffd|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_adder|FA3|R~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[3]~3_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_adder|FA2|R~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[2]~2_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_adder|FA1|R~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[1]~1_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[0]~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ : std_logic;
SIGNAL \Multiplier[3]~input_o\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[3]~3_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ : std_logic;
SIGNAL \Multiplier[2]~input_o\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[2]~2_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\ : std_logic;
SIGNAL \Multiplier[1]~input_o\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[1]~1_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[0]~0_combout\ : std_logic;
SIGNAL \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX2[0]~4_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX2[2]~5_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX2[3]~7_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX2[5]~6_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX2[6]~8_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[6]~6_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[6]~7_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[6]~8_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U1|dOut[0]~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[0]~14_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U1|Equal14~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[1]~8_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[1]~10_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[2]~11_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U1|dOut[3]~2_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[3]~15_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U1|dOut[4]~3_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[4]~16_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[5]~12_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[5]~13_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U1|dOut[6]~4_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX1[6]~17_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[0]~6_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[0]~7_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U0|dOut[1]~1_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U0|Equal14~0_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[1]~9_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[2]~10_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[2]~11_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U0|dOut[3]~2_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[3]~14_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U0|dOut[4]~3_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[4]~15_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[5]~12_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[5]~13_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|U0|dOut[6]~4_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|HEX0[6]~16_combout\ : std_logic;
SIGNAL \inst_asm|U2|ALT_INV_rom~4_combout\ : std_logic;
SIGNAL \inst_DataPath|Decoder_hex_inst|ALT_INV_HEX2[0]~4_combout\ : std_logic;
SIGNAL \inst_asm|U2|ALT_INV_rom~1_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Multiplicand <= Multiplicand;
ww_Multiplier <= Multiplier;
ww_MCLK <= MCLK;
ww_Reset <= Reset;
ww_Start <= Start;
Ready <= ww_Ready;
Product <= ww_Product;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\inst_asm|U2|ALT_INV_rom~4_combout\ <= NOT \inst_asm|U2|rom~4_combout\;
\inst_DataPath|Decoder_hex_inst|ALT_INV_HEX2[0]~4_combout\ <= NOT \inst_DataPath|Decoder_hex_inst|HEX2[0]~4_combout\;
\inst_asm|U2|ALT_INV_rom~1_combout\ <= NOT \inst_asm|U2|rom~1_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y36_N24
\Ready~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_asm|U2|rom~0_combout\,
	devoe => ww_devoe,
	o => \Ready~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Product[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	devoe => ww_devoe,
	o => \Product[0]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\Product[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	devoe => ww_devoe,
	o => \Product[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\Product[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\,
	devoe => ww_devoe,
	o => \Product[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\Product[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\,
	devoe => ww_devoe,
	o => \Product[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Product[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	devoe => ww_devoe,
	o => \Product[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Product[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	devoe => ww_devoe,
	o => \Product[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\Product[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	devoe => ww_devoe,
	o => \Product[6]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\Product[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	devoe => ww_devoe,
	o => \Product[7]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|ALT_INV_HEX2[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_asm|U2|rom~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX2[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX2[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|ALT_INV_HEX2[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX2[5]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX2[6]~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[0]~14_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[1]~10_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[2]~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[3]~15_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[4]~16_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[5]~13_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX1[6]~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[0]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[2]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[3]~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[4]~15_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[5]~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_DataPath|Decoder_hex_inst|HEX0[6]~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\MCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G3
\MCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y33_N15
\Start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X76_Y33_N12
\inst_asm|U2|rom~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~3_combout\ = (\inst_asm|U1|Q~q\ & ((\Start~input_o\) # (!\inst_asm|U0|Q~q\))) # (!\inst_asm|U1|Q~q\ & (!\inst_asm|U0|Q~q\ & \Start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_asm|U1|Q~q\,
	datac => \inst_asm|U0|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_asm|U2|rom~3_combout\);

-- Location: IOIBUF_X0_Y18_N22
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X76_Y33_N13
\inst_asm|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_asm|U2|rom~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_asm|U0|Q~q\);

-- Location: LCCOMB_X76_Y33_N20
\inst_asm|U2|rom~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~4_combout\ = (\inst_asm|U0|Q~q\ & ((\Start~input_o\) # ((!\inst_asm|U1|Q~q\)))) # (!\inst_asm|U0|Q~q\ & (((\inst_asm|U1|Q~q\ & \inst_DataPath|inst_counter|U_comparer|TC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \Start~input_o\,
	datac => \inst_asm|U1|Q~q\,
	datad => \inst_DataPath|inst_counter|U_comparer|TC~0_combout\,
	combout => \inst_asm|U2|rom~4_combout\);

-- Location: FF_X76_Y33_N27
\inst_asm|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \inst_asm|U2|rom~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_asm|U1|Q~q\);

-- Location: LCCOMB_X76_Y33_N10
\inst_DataPath|inst_counter|U_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_counter|U_reg|U0|Q~0_combout\ = \inst_DataPath|inst_counter|U_reg|U0|Q~q\ $ (((!\inst_DataPath|inst_counter|U_comparer|TC~0_combout\ & (\inst_asm|U1|Q~q\ & !\inst_asm|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_counter|U_comparer|TC~0_combout\,
	datab => \inst_asm|U1|Q~q\,
	datac => \inst_DataPath|inst_counter|U_reg|U0|Q~q\,
	datad => \inst_asm|U0|Q~q\,
	combout => \inst_DataPath|inst_counter|U_reg|U0|Q~0_combout\);

-- Location: LCCOMB_X76_Y33_N0
\inst_asm|U2|rom~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~1_combout\ = (!\Start~input_o\ & (\inst_asm|U1|Q~q\ $ (!\inst_asm|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Start~input_o\,
	datac => \inst_asm|U1|Q~q\,
	datad => \inst_asm|U0|Q~q\,
	combout => \inst_asm|U2|rom~1_combout\);

-- Location: FF_X76_Y33_N11
\inst_DataPath|inst_counter|U_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_counter|U_reg|U0|Q~0_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_counter|U_reg|U0|Q~q\);

-- Location: LCCOMB_X76_Y33_N26
\inst_asm|U2|rom~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~2_combout\ = (!\inst_asm|U0|Q~q\ & (\inst_asm|U1|Q~q\ & !\inst_DataPath|inst_counter|U_comparer|TC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_asm|U0|Q~q\,
	datac => \inst_asm|U1|Q~q\,
	datad => \inst_DataPath|inst_counter|U_comparer|TC~0_combout\,
	combout => \inst_asm|U2|rom~2_combout\);

-- Location: LCCOMB_X76_Y33_N8
\inst_DataPath|inst_counter|U_reg|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_counter|U_reg|U1|Q~0_combout\ = \inst_DataPath|inst_counter|U_reg|U1|Q~q\ $ (((\inst_asm|U2|rom~2_combout\ & \inst_DataPath|inst_counter|U_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~2_combout\,
	datac => \inst_DataPath|inst_counter|U_reg|U1|Q~q\,
	datad => \inst_DataPath|inst_counter|U_reg|U0|Q~q\,
	combout => \inst_DataPath|inst_counter|U_reg|U1|Q~0_combout\);

-- Location: FF_X76_Y33_N9
\inst_DataPath|inst_counter|U_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_counter|U_reg|U1|Q~0_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_counter|U_reg|U1|Q~q\);

-- Location: LCCOMB_X76_Y33_N24
\inst_DataPath|inst_counter|U_reg|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_counter|U_reg|U2|Q~0_combout\ = \inst_DataPath|inst_counter|U_reg|U2|Q~q\ $ (((\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_counter|U_reg|U0|Q~q\ & \inst_DataPath|inst_counter|U_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~2_combout\,
	datab => \inst_DataPath|inst_counter|U_reg|U0|Q~q\,
	datac => \inst_DataPath|inst_counter|U_reg|U2|Q~q\,
	datad => \inst_DataPath|inst_counter|U_reg|U1|Q~q\,
	combout => \inst_DataPath|inst_counter|U_reg|U2|Q~0_combout\);

-- Location: FF_X76_Y33_N25
\inst_DataPath|inst_counter|U_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_counter|U_reg|U2|Q~0_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_counter|U_reg|U2|Q~q\);

-- Location: LCCOMB_X76_Y33_N6
\inst_DataPath|inst_counter|U_comparer|TC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_counter|U_comparer|TC~0_combout\ = (!\inst_DataPath|inst_counter|U_reg|U0|Q~q\ & (!\inst_DataPath|inst_counter|U_reg|U1|Q~q\ & \inst_DataPath|inst_counter|U_reg|U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_counter|U_reg|U0|Q~q\,
	datac => \inst_DataPath|inst_counter|U_reg|U1|Q~q\,
	datad => \inst_DataPath|inst_counter|U_reg|U2|Q~q\,
	combout => \inst_DataPath|inst_counter|U_comparer|TC~0_combout\);

-- Location: LCCOMB_X75_Y33_N28
\inst_asm|U2|rom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~0_combout\ = (\inst_asm|U1|Q~q\ & ((\inst_asm|U0|Q~q\ & ((\Start~input_o\))) # (!\inst_asm|U0|Q~q\ & (\inst_DataPath|inst_counter|U_comparer|TC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_counter|U_comparer|TC~0_combout\,
	datab => \inst_asm|U0|Q~q\,
	datac => \Start~input_o\,
	datad => \inst_asm|U1|Q~q\,
	combout => \inst_asm|U2|rom~0_combout\);

-- Location: IOIBUF_X78_Y35_N8
\Multiplier[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(0),
	o => \Multiplier[0]~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\Multiplicand[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplicand(3),
	o => \Multiplicand[3]~input_o\);

-- Location: LCCOMB_X75_Y33_N0
\inst_asm|U2|rom~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~7_combout\ = (\inst_asm|U0|Q~q\ & (!\Start~input_o\ & \inst_asm|U1|Q~q\)) # (!\inst_asm|U0|Q~q\ & ((!\inst_asm|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datac => \inst_asm|U0|Q~q\,
	datad => \inst_asm|U1|Q~q\,
	combout => \inst_asm|U2|rom~7_combout\);

-- Location: FF_X75_Y33_N15
\inst_DataPath|inst_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \Multiplicand[3]~input_o\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	sload => VCC,
	ena => \inst_asm|U2|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_reg|U3|Q~q\);

-- Location: IOIBUF_X78_Y40_N8
\Multiplicand[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplicand(2),
	o => \Multiplicand[2]~input_o\);

-- Location: FF_X75_Y33_N9
\inst_DataPath|inst_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \Multiplicand[2]~input_o\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	sload => VCC,
	ena => \inst_asm|U2|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_reg|U2|Q~q\);

-- Location: IOIBUF_X78_Y40_N22
\Multiplicand[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplicand(0),
	o => \Multiplicand[0]~input_o\);

-- Location: FF_X75_Y33_N21
\inst_DataPath|inst_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \Multiplicand[0]~input_o\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	sload => VCC,
	ena => \inst_asm|U2|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_reg|U0|Q~q\);

-- Location: IOIBUF_X78_Y37_N15
\Multiplicand[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplicand(1),
	o => \Multiplicand[1]~input_o\);

-- Location: FF_X75_Y33_N3
\inst_DataPath|inst_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \Multiplicand[1]~input_o\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	sload => VCC,
	ena => \inst_asm|U2|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_reg|U1|Q~q\);

-- Location: LCCOMB_X75_Y33_N2
\inst_DataPath|inst_adder|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_adder|FA1|Cout~0_combout\ = (\inst_DataPath|inst_reg|U1|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\) # ((\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & \inst_DataPath|inst_reg|U0|Q~q\)))) # 
-- (!\inst_DataPath|inst_reg|U1|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & (\inst_DataPath|inst_reg|U0|Q~q\ & \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|inst_reg|U0|Q~q\,
	datac => \inst_DataPath|inst_reg|U1|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	combout => \inst_DataPath|inst_adder|FA1|Cout~0_combout\);

-- Location: LCCOMB_X75_Y33_N30
\inst_DataPath|inst_adder|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_adder|FA2|Cout~0_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & ((\inst_DataPath|inst_reg|U2|Q~q\) # (\inst_DataPath|inst_adder|FA1|Cout~0_combout\))) # (!\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & 
-- (\inst_DataPath|inst_reg|U2|Q~q\ & \inst_DataPath|inst_adder|FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datac => \inst_DataPath|inst_reg|U2|Q~q\,
	datad => \inst_DataPath|inst_adder|FA1|Cout~0_combout\,
	combout => \inst_DataPath|inst_adder|FA2|Cout~0_combout\);

-- Location: LCCOMB_X76_Y33_N30
\inst_DataPath|inst_mux1|Sout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_mux1|Sout~0_combout\ = (!\inst_asm|U2|rom~2_combout\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & ((\inst_DataPath|inst_reg|U3|Q~q\) # (\inst_DataPath|inst_adder|FA2|Cout~0_combout\))) # 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & (\inst_DataPath|inst_reg|U3|Q~q\ & \inst_DataPath|inst_adder|FA2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|inst_reg|U3|Q~q\,
	datac => \inst_asm|U2|rom~2_combout\,
	datad => \inst_DataPath|inst_adder|FA2|Cout~0_combout\,
	combout => \inst_DataPath|inst_mux1|Sout~0_combout\);

-- Location: LCCOMB_X76_Y33_N18
\inst_asm|U2|rom~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~5_combout\ = (\inst_asm|U0|Q~q\ & ((\inst_asm|U1|Q~q\ & (!\Start~input_o\)) # (!\inst_asm|U1|Q~q\ & ((\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\))))) # (!\inst_asm|U0|Q~q\ & (((\inst_asm|U1|Q~q\)) # (!\Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \Start~input_o\,
	datac => \inst_asm|U1|Q~q\,
	datad => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	combout => \inst_asm|U2|rom~5_combout\);

-- Location: LCCOMB_X76_Y33_N28
\inst_asm|U2|rom~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|U2|rom~6_combout\ = (\inst_asm|U2|rom~5_combout\ & ((\inst_asm|U0|Q~q\) # ((!\inst_DataPath|inst_counter|U_comparer|TC~0_combout\) # (!\inst_asm|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_asm|U1|Q~q\,
	datac => \inst_DataPath|inst_counter|U_comparer|TC~0_combout\,
	datad => \inst_asm|U2|rom~5_combout\,
	combout => \inst_asm|U2|rom~6_combout\);

-- Location: FF_X76_Y33_N31
\inst_DataPath|inst_ffd|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_mux1|Sout~0_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	ena => \inst_asm|U2|rom~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_ffd|Q~q\);

-- Location: LCCOMB_X75_Y33_N14
\inst_DataPath|inst_adder|FA3|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_adder|FA3|R~0_combout\ = \inst_DataPath|inst_reg|U3|Q~q\ $ (((\inst_DataPath|inst_reg|U2|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\) # (\inst_DataPath|inst_adder|FA1|Cout~0_combout\))) # 
-- (!\inst_DataPath|inst_reg|U2|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & \inst_DataPath|inst_adder|FA1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_reg|U2|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datac => \inst_DataPath|inst_reg|U3|Q~q\,
	datad => \inst_DataPath|inst_adder|FA1|Cout~0_combout\,
	combout => \inst_DataPath|inst_adder|FA3|R~0_combout\);

-- Location: LCCOMB_X76_Y33_N14
\inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[3]~3_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_ffd|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ $ 
-- (\inst_DataPath|inst_adder|FA3|R~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~2_combout\,
	datab => \inst_DataPath|inst_ffd|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datad => \inst_DataPath|inst_adder|FA3|R~0_combout\,
	combout => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[3]~3_combout\);

-- Location: FF_X76_Y33_N15
\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[3]~3_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	ena => \inst_asm|U2|rom~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\);

-- Location: LCCOMB_X75_Y33_N8
\inst_DataPath|inst_adder|FA2|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_adder|FA2|R~0_combout\ = \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ $ (\inst_DataPath|inst_reg|U2|Q~q\ $ (\inst_DataPath|inst_adder|FA1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datac => \inst_DataPath|inst_reg|U2|Q~q\,
	datad => \inst_DataPath|inst_adder|FA1|Cout~0_combout\,
	combout => \inst_DataPath|inst_adder|FA2|R~0_combout\);

-- Location: LCCOMB_X76_Y33_N16
\inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[2]~2_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\inst_DataPath|inst_adder|FA2|R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datac => \inst_asm|U2|rom~2_combout\,
	datad => \inst_DataPath|inst_adder|FA2|R~0_combout\,
	combout => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[2]~2_combout\);

-- Location: FF_X76_Y33_N17
\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[2]~2_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	ena => \inst_asm|U2|rom~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\);

-- Location: LCCOMB_X75_Y33_N20
\inst_DataPath|inst_adder|FA1|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_adder|FA1|R~0_combout\ = \inst_DataPath|inst_reg|U1|Q~q\ $ (\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ $ (((\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & \inst_DataPath|inst_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|inst_reg|U1|Q~q\,
	datac => \inst_DataPath|inst_reg|U0|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	combout => \inst_DataPath|inst_adder|FA1|R~0_combout\);

-- Location: LCCOMB_X76_Y33_N22
\inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[1]~1_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\inst_DataPath|inst_adder|FA1|R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datac => \inst_asm|U2|rom~2_combout\,
	datad => \inst_DataPath|inst_adder|FA1|R~0_combout\,
	combout => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[1]~1_combout\);

-- Location: FF_X76_Y33_N23
\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[1]~1_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	ena => \inst_asm|U2|rom~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\);

-- Location: LCCOMB_X76_Y33_N4
\inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[0]~0_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ $ 
-- (\inst_DataPath|inst_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~2_combout\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|inst_reg|U0|Q~q\,
	combout => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[0]~0_combout\);

-- Location: FF_X76_Y33_N5
\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg1|MUX_4_inst|Sout[0]~0_combout\,
	clrn => \inst_asm|U2|ALT_INV_rom~1_combout\,
	ena => \inst_asm|U2|rom~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\);

-- Location: IOIBUF_X78_Y33_N8
\Multiplier[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(3),
	o => \Multiplier[3]~input_o\);

-- Location: LCCOMB_X77_Y33_N10
\inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[3]~3_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\Multiplier[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	datac => \Multiplier[3]~input_o\,
	datad => \inst_asm|U2|rom~2_combout\,
	combout => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[3]~3_combout\);

-- Location: FF_X77_Y33_N11
\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[3]~3_combout\,
	ena => \inst_asm|U2|ALT_INV_rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\);

-- Location: IOIBUF_X78_Y33_N1
\Multiplier[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(2),
	o => \Multiplier[2]~input_o\);

-- Location: LCCOMB_X77_Y33_N16
\inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[2]~2_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\Multiplier[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\,
	datac => \Multiplier[2]~input_o\,
	datad => \inst_asm|U2|rom~2_combout\,
	combout => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[2]~2_combout\);

-- Location: FF_X77_Y33_N17
\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[2]~2_combout\,
	ena => \inst_asm|U2|ALT_INV_rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\);

-- Location: IOIBUF_X78_Y35_N1
\Multiplier[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(1),
	o => \Multiplier[1]~input_o\);

-- Location: LCCOMB_X77_Y33_N30
\inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[1]~1_combout\ = (\inst_asm|U2|rom~2_combout\ & (\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\)) # (!\inst_asm|U2|rom~2_combout\ & ((\Multiplier[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\,
	datac => \Multiplier[1]~input_o\,
	datad => \inst_asm|U2|rom~2_combout\,
	combout => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[1]~1_combout\);

-- Location: FF_X77_Y33_N31
\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[1]~1_combout\,
	ena => \inst_asm|U2|ALT_INV_rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\);

-- Location: LCCOMB_X77_Y33_N4
\inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[0]~0_combout\ = (\inst_asm|U2|rom~2_combout\ & ((\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\))) # (!\inst_asm|U2|rom~2_combout\ & (\Multiplier[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplier[0]~input_o\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	datad => \inst_asm|U2|rom~2_combout\,
	combout => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[0]~0_combout\);

-- Location: FF_X77_Y33_N5
\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_DataPath|inst_shift_reg2|MUX_4_inst|Sout[0]~0_combout\,
	ena => \inst_asm|U2|ALT_INV_rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\);

-- Location: LCCOMB_X75_Y33_N18
\inst_DataPath|Decoder_hex_inst|U3|x~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & (!\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\) # 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\)))) # (!\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\) # 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\);

-- Location: LCCOMB_X75_Y33_N26
\inst_DataPath|Decoder_hex_inst|U3|x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & (!\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & 
-- \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\)) # (!\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & !\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\)))) # 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ $ (((\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & !\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\);

-- Location: LCCOMB_X75_Y33_N12
\inst_DataPath|Decoder_hex_inst|U3|x~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & (!\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ $ 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\)))) # (!\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & (!\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & 
-- \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\);

-- Location: LCCOMB_X75_Y33_N6
\inst_DataPath|Decoder_hex_inst|U3|x~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ = \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\ $ ((((!\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ & !\inst_DataPath|Decoder_hex_inst|U3|x~0_combout\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\);

-- Location: LCCOMB_X76_Y32_N18
\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\) # 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\))) # (!\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & !\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\)))) # 
-- (!\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & (((!\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\);

-- Location: LCCOMB_X76_Y32_N26
\inst_DataPath|Decoder_hex_inst|U3|dec[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\) # (!\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\);

-- Location: LCCOMB_X75_Y32_N24
\inst_DataPath|Decoder_hex_inst|U3|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\ & ((\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\) # (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y33_N24
\inst_DataPath|Decoder_hex_inst|U3|x~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ & (((\inst_DataPath|Decoder_hex_inst|U3|x~0_combout\)))) # (!\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ & 
-- ((\inst_DataPath|Decoder_hex_inst|U3|x~0_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|x~1_combout\)) # (!\inst_DataPath|Decoder_hex_inst|U3|x~0_combout\ & 
-- ((\inst_DataPath|Decoder_hex_inst|U3|x~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\);

-- Location: LCCOMB_X75_Y33_N10
\inst_DataPath|Decoder_hex_inst|U3|x~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ & (!\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~0_combout\))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~1_combout\ & ((\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\) # (\inst_DataPath|Decoder_hex_inst|U3|x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\);

-- Location: LCCOMB_X75_Y33_N4
\inst_DataPath|Decoder_hex_inst|U3|x~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ & ((!\inst_DataPath|Decoder_hex_inst|U3|x~1_combout\)))) # 
-- (!\inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~1_combout\) # ((\inst_DataPath|Decoder_hex_inst|U3|x~2_combout\ & \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U3|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~2_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\);

-- Location: LCCOMB_X77_Y33_N8
\inst_DataPath|Decoder_hex_inst|U3|x~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ = \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ $ ((((!\inst_DataPath|Decoder_hex_inst|U3|x~5_combout\ & !\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\,
	datad => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\);

-- Location: LCCOMB_X76_Y32_N28
\inst_DataPath|Decoder_hex_inst|U3|x~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\ = ((!\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & !\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\)) # (!\inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\);

-- Location: LCCOMB_X76_Y32_N0
\inst_DataPath|Decoder_hex_inst|U3|dec[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\))) # (!\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (((\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\) # (!\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\);

-- Location: LCCOMB_X76_Y32_N8
\inst_DataPath|Decoder_hex_inst|HEX2[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX2[0]~4_combout\ = (!\inst_asm|U2|rom~1_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\) # ((\inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\ & 
-- \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\,
	datac => \inst_asm|U2|rom~1_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX2[0]~4_combout\);

-- Location: LCCOMB_X76_Y32_N2
\inst_DataPath|Decoder_hex_inst|HEX2[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX2[2]~5_combout\ = (\inst_asm|U2|rom~1_combout\) # ((\inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\ & 
-- \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\,
	datac => \inst_asm|U2|rom~1_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX2[2]~5_combout\);

-- Location: LCCOMB_X75_Y33_N16
\inst_DataPath|Decoder_hex_inst|HEX2[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX2[3]~7_combout\ = ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\,
	datac => \Start~input_o\,
	datad => \inst_asm|U1|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX2[3]~7_combout\);

-- Location: LCCOMB_X76_Y32_N16
\inst_DataPath|Decoder_hex_inst|HEX2[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX2[5]~6_combout\ = (\inst_asm|U2|rom~1_combout\) # (\inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\ $ (((!\inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~2_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\,
	datac => \inst_asm|U2|rom~1_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX2[5]~6_combout\);

-- Location: LCCOMB_X76_Y32_N22
\inst_DataPath|Decoder_hex_inst|HEX2[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX2[6]~8_combout\ = (\inst_asm|U2|rom~1_combout\) # (((\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\)) # (!\inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|LessThan0~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX2[6]~8_combout\);

-- Location: LCCOMB_X76_Y32_N14
\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ $ 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\);

-- Location: LCCOMB_X76_Y32_N10
\inst_DataPath|Decoder_hex_inst|U3|dec[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[6]~6_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\))) # (!\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & 
-- \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~6_combout\);

-- Location: LCCOMB_X76_Y32_N20
\inst_DataPath|Decoder_hex_inst|U3|dec[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[6]~7_combout\ = (\inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\ & (\inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\ & 
-- \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg1|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|inst_shift_reg1|Registo_inst|U2|Q~q\,
	datac => \inst_DataPath|inst_shift_reg1|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|inst_shift_reg1|Registo_inst|U3|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~7_combout\);

-- Location: LCCOMB_X76_Y32_N30
\inst_DataPath|Decoder_hex_inst|U3|dec[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[6]~8_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~7_combout\) # ((\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~7_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~8_combout\);

-- Location: LCCOMB_X76_Y32_N24
\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~6_combout\) # ((\inst_DataPath|Decoder_hex_inst|U3|dec[6]~8_combout\ & \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~6_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~8_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\);

-- Location: LCCOMB_X76_Y32_N4
\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\) # (!\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\))))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ $ (((\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\);

-- Location: LCCOMB_X77_Y33_N6
\inst_DataPath|Decoder_hex_inst|U3|x~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~5_combout\ $ (!\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\)))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~5_combout\ & ((\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\) # (!\inst_DataPath|Decoder_hex_inst|U3|x~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\,
	datad => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\);

-- Location: LCCOMB_X77_Y33_N14
\inst_DataPath|Decoder_hex_inst|U3|x~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~3_combout\ & (!\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~4_combout\) # 
-- (\inst_DataPath|Decoder_hex_inst|U3|x~5_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|x~3_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ $ (((\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\,
	datad => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\);

-- Location: LCCOMB_X77_Y33_N28
\inst_DataPath|Decoder_hex_inst|U3|x~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~3_combout\ & (((!\inst_DataPath|Decoder_hex_inst|U3|x~5_combout\ & !\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\)))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~3_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~4_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~5_combout\) # (\inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~4_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~5_combout\,
	datad => \inst_DataPath|inst_shift_reg2|Registo_inst|U2|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\);

-- Location: LCCOMB_X77_Y33_N12
\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ = \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\ $ ((((!\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\ & !\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\);

-- Location: LCCOMB_X77_Y32_N0
\inst_DataPath|Decoder_hex_inst|U1|dOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U1|dOut[0]~0_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ $ 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ $ 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U1|dOut[0]~0_combout\);

-- Location: LCCOMB_X75_Y33_N22
\inst_DataPath|Decoder_hex_inst|HEX1[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[0]~14_combout\ = (\inst_DataPath|Decoder_hex_inst|U1|dOut[0]~0_combout\) # ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U1|dOut[0]~0_combout\,
	datac => \Start~input_o\,
	datad => \inst_asm|U1|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[0]~14_combout\);

-- Location: LCCOMB_X77_Y33_N26
\inst_DataPath|Decoder_hex_inst|U3|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\) # (\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\);

-- Location: LCCOMB_X76_Y33_N2
\inst_DataPath|Decoder_hex_inst|U1|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U1|Equal14~0_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\ $ 
-- (\inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\ $ 
-- (\inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[8]~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U1|Equal14~0_combout\);

-- Location: LCCOMB_X76_Y32_N6
\inst_DataPath|Decoder_hex_inst|HEX1[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\ = (!\inst_asm|U2|rom~1_combout\ & (((\inst_DataPath|Decoder_hex_inst|U1|Equal14~0_combout\) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U1|Equal14~0_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\);

-- Location: LCCOMB_X77_Y32_N10
\inst_DataPath|Decoder_hex_inst|HEX1[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[1]~8_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ $ 
-- (\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[1]~8_combout\);

-- Location: LCCOMB_X77_Y32_N20
\inst_DataPath|Decoder_hex_inst|HEX1[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[1]~10_combout\ = (\inst_DataPath|Decoder_hex_inst|HEX1[1]~8_combout\) # (!\inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|HEX1[1]~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[1]~10_combout\);

-- Location: LCCOMB_X76_Y32_N12
\inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & 
-- \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\)))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~6_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\ $ (((\inst_DataPath|Decoder_hex_inst|U3|x~8_combout\) # (!\inst_DataPath|Decoder_hex_inst|U3|x~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~6_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[9]~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|x~7_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\);

-- Location: LCCOMB_X77_Y32_N2
\inst_DataPath|Decoder_hex_inst|HEX1[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[2]~11_combout\ = ((\inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\))) # 
-- (!\inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|HEX1[1]~9_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[2]~11_combout\);

-- Location: LCCOMB_X77_Y32_N8
\inst_DataPath|Decoder_hex_inst|U1|dOut[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U1|dOut[3]~2_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\)) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\)))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ $ (\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U1|dOut[3]~2_combout\);

-- Location: LCCOMB_X74_Y33_N6
\inst_DataPath|Decoder_hex_inst|HEX1[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[3]~15_combout\ = (\inst_DataPath|Decoder_hex_inst|U1|dOut[3]~2_combout\) # ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U1|dOut[3]~2_combout\,
	datac => \inst_asm|U1|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[3]~15_combout\);

-- Location: LCCOMB_X77_Y32_N22
\inst_DataPath|Decoder_hex_inst|U1|dOut[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U1|dOut[4]~3_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ & ((!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\))))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & 
-- ((!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U1|dOut[4]~3_combout\);

-- Location: LCCOMB_X74_Y33_N12
\inst_DataPath|Decoder_hex_inst|HEX1[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[4]~16_combout\ = (\inst_DataPath|Decoder_hex_inst|U1|dOut[4]~3_combout\) # ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U1|dOut[4]~3_combout\,
	datac => \inst_asm|U1|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[4]~16_combout\);

-- Location: LCCOMB_X77_Y32_N28
\inst_DataPath|Decoder_hex_inst|HEX1[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[5]~12_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ $ 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[5]~12_combout\);

-- Location: LCCOMB_X77_Y32_N30
\inst_DataPath|Decoder_hex_inst|HEX1[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[5]~13_combout\ = (\inst_DataPath|Decoder_hex_inst|HEX1[5]~12_combout\) # ((\inst_asm|U2|rom~1_combout\) # ((\inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U1|dOut[5]~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|HEX1[5]~12_combout\,
	datac => \inst_asm|U2|rom~1_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[5]~13_combout\);

-- Location: LCCOMB_X77_Y32_N16
\inst_DataPath|Decoder_hex_inst|U1|dOut[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U1|dOut[6]~4_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\ $ (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\))) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\) # (\inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\ $ 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[7]~3_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[6]~9_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[5]~4_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[4]~5_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U1|dOut[6]~4_combout\);

-- Location: LCCOMB_X74_Y33_N10
\inst_DataPath|Decoder_hex_inst|HEX1[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX1[6]~17_combout\ = ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\)))) # (!\inst_DataPath|Decoder_hex_inst|U1|dOut[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U1|dOut[6]~4_combout\,
	datac => \inst_asm|U1|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX1[6]~17_combout\);

-- Location: LCCOMB_X77_Y33_N0
\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ & (!\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\) # 
-- (\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ & ((\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\ $ (\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\);

-- Location: LCCOMB_X77_Y33_N2
\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\ & (!\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\) # (\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\);

-- Location: LCCOMB_X77_Y33_N24
\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\ & ((\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\) # ((!\inst_DataPath|Decoder_hex_inst|U3|x~9_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\)))) # (!\inst_DataPath|Decoder_hex_inst|U3|x~11_combout\ & (((!\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\ & \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|x~9_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|x~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\);

-- Location: LCCOMB_X77_Y32_N26
\inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ & (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & 
-- \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\);

-- Location: LCCOMB_X77_Y32_N12
\inst_DataPath|Decoder_hex_inst|HEX0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[0]~6_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ $ (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\))) # 
-- (!\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[0]~6_combout\);

-- Location: LCCOMB_X77_Y32_N6
\inst_DataPath|Decoder_hex_inst|HEX0[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[0]~7_combout\ = (\inst_asm|U2|rom~1_combout\) # ((\inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\) # ((!\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & 
-- \inst_DataPath|Decoder_hex_inst|HEX0[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|HEX0[0]~6_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[0]~7_combout\);

-- Location: LCCOMB_X77_Y32_N4
\inst_DataPath|Decoder_hex_inst|U0|dOut[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U0|dOut[1]~1_combout\ = (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ & (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ $ 
-- (\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U0|dOut[1]~1_combout\);

-- Location: LCCOMB_X77_Y33_N22
\inst_DataPath|Decoder_hex_inst|U0|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U0|Equal14~0_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (\inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\ $ (((!\inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|x~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U1|Q~q\,
	datab => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|Add5~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|x~10_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U0|Equal14~0_combout\);

-- Location: LCCOMB_X77_Y33_N20
\inst_DataPath|Decoder_hex_inst|HEX0[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\ = (!\inst_asm|U2|rom~1_combout\ & (((\inst_DataPath|Decoder_hex_inst|U0|Equal14~0_combout\) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U2|rom~1_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U0|Equal14~0_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\);

-- Location: LCCOMB_X77_Y32_N18
\inst_DataPath|Decoder_hex_inst|HEX0[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[1]~9_combout\ = (\inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\) # ((\inst_DataPath|Decoder_hex_inst|U0|dOut[1]~1_combout\) # (!\inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U0|dOut[0]~0_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U0|dOut[1]~1_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[1]~9_combout\);

-- Location: LCCOMB_X77_Y33_N18
\inst_DataPath|Decoder_hex_inst|HEX0[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[2]~10_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & (!\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & 
-- !\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[2]~10_combout\);

-- Location: LCCOMB_X77_Y31_N16
\inst_DataPath|Decoder_hex_inst|HEX0[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[2]~11_combout\ = (\inst_DataPath|Decoder_hex_inst|HEX0[2]~10_combout\) # (!\inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_DataPath|Decoder_hex_inst|HEX0[2]~10_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|HEX0[1]~8_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[2]~11_combout\);

-- Location: LCCOMB_X74_Y33_N28
\inst_DataPath|Decoder_hex_inst|U0|dOut[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U0|dOut[3]~2_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ $ (((!\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\))))) # 
-- (!\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\)) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U0|dOut[3]~2_combout\);

-- Location: LCCOMB_X74_Y33_N20
\inst_DataPath|Decoder_hex_inst|HEX0[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[3]~14_combout\ = (\inst_DataPath|Decoder_hex_inst|U0|dOut[3]~2_combout\) # ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U0|dOut[3]~2_combout\,
	datac => \inst_asm|U1|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[3]~14_combout\);

-- Location: LCCOMB_X74_Y33_N18
\inst_DataPath|Decoder_hex_inst|U0|dOut[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U0|dOut[4]~3_combout\ = (\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\))) # 
-- (!\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\)) # (!\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\ & 
-- ((\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U0|dOut[4]~3_combout\);

-- Location: LCCOMB_X74_Y33_N22
\inst_DataPath|Decoder_hex_inst|HEX0[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[4]~15_combout\ = (\inst_DataPath|Decoder_hex_inst|U0|dOut[4]~3_combout\) # ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U0|dOut[4]~3_combout\,
	datac => \inst_asm|U1|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[4]~15_combout\);

-- Location: LCCOMB_X77_Y32_N24
\inst_DataPath|Decoder_hex_inst|HEX0[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[5]~12_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\)) # 
-- (!\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ & !\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	datac => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[5]~12_combout\);

-- Location: LCCOMB_X77_Y32_N14
\inst_DataPath|Decoder_hex_inst|HEX0[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[5]~13_combout\ = (\inst_asm|U2|rom~1_combout\) # ((\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ $ (!\inst_DataPath|Decoder_hex_inst|HEX0[5]~12_combout\))) 
-- # (!\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & (!\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ & \inst_DataPath|Decoder_hex_inst|HEX0[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datac => \inst_asm|U2|rom~1_combout\,
	datad => \inst_DataPath|Decoder_hex_inst|HEX0[5]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[5]~13_combout\);

-- Location: LCCOMB_X74_Y33_N4
\inst_DataPath|Decoder_hex_inst|U0|dOut[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|U0|dOut[6]~4_combout\ = (\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\) # (\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\ $ 
-- (\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\)))) # (!\inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\ & ((\inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\) # (\inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\ $ 
-- (\inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_DataPath|Decoder_hex_inst|U3|dec[1]~10_combout\,
	datab => \inst_DataPath|Decoder_hex_inst|U3|dec[3]~11_combout\,
	datac => \inst_DataPath|inst_shift_reg2|Registo_inst|U0|Q~q\,
	datad => \inst_DataPath|Decoder_hex_inst|U3|dec[2]~12_combout\,
	combout => \inst_DataPath|Decoder_hex_inst|U0|dOut[6]~4_combout\);

-- Location: LCCOMB_X74_Y33_N8
\inst_DataPath|Decoder_hex_inst|HEX0[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_DataPath|Decoder_hex_inst|HEX0[6]~16_combout\ = ((!\Start~input_o\ & (\inst_asm|U0|Q~q\ $ (!\inst_asm|U1|Q~q\)))) # (!\inst_DataPath|Decoder_hex_inst|U0|dOut[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|U0|Q~q\,
	datab => \inst_DataPath|Decoder_hex_inst|U0|dOut[6]~4_combout\,
	datac => \inst_asm|U1|Q~q\,
	datad => \Start~input_o\,
	combout => \inst_DataPath|Decoder_hex_inst|HEX0[6]~16_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Ready <= \Ready~output_o\;

ww_Product(0) <= \Product[0]~output_o\;

ww_Product(1) <= \Product[1]~output_o\;

ww_Product(2) <= \Product[2]~output_o\;

ww_Product(3) <= \Product[3]~output_o\;

ww_Product(4) <= \Product[4]~output_o\;

ww_Product(5) <= \Product[5]~output_o\;

ww_Product(6) <= \Product[6]~output_o\;

ww_Product(7) <= \Product[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;
END structure;


