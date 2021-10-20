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

-- DATE "10/20/2021 19:29:04"

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

ENTITY 	main_circuit IS
    PORT (
	clk : IN std_logic;
	Start : IN std_logic;
	ln1 : IN std_logic_vector(7 DOWNTO 0);
	ln2 : IN std_logic_vector(7 DOWNTO 0);
	Out_put : OUT std_logic_vector(7 DOWNTO 0);
	out_reg1 : OUT std_logic_vector(7 DOWNTO 0);
	out_reg2 : OUT std_logic_vector(7 DOWNTO 0);
	out_reg3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END main_circuit;

-- Design Ports Information
-- Out_put[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Out_put[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[5]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg1[7]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[2]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[5]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[6]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg2[7]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[1]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[2]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[3]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[4]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[5]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[6]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_reg3[7]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ln1[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[3]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[4]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[6]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln1[7]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[0]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[1]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[2]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[4]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[6]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ln2[7]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Start	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main_circuit IS
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
SIGNAL ww_Start : std_logic;
SIGNAL ww_ln1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ln2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Out_put : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_reg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_reg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_reg3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a2|a6|a23|Add0~2_combout\ : std_logic;
SIGNAL \a2|a6|a23|Add0~4_combout\ : std_logic;
SIGNAL \a2|a6|a23|Add0~8_combout\ : std_logic;
SIGNAL \a2|a10|Out[0]~0_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~0_combout\ : std_logic;
SIGNAL \a2|a11|Out[3]~6_combout\ : std_logic;
SIGNAL \a2|a11|Out[5]~10_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~11\ : std_logic;
SIGNAL \a2|a11|Out[6]~13\ : std_logic;
SIGNAL \a2|a7|a23|Add0~12_combout\ : std_logic;
SIGNAL \a2|a11|Out[7]~14_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[0]~6_combout\ : std_logic;
SIGNAL \a1|a1|WE[2]~0_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[1]~4_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[3]~14_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \a1|a0|Out~1_combout\ : std_logic;
SIGNAL \a1|a0|Out[1]~2_combout\ : std_logic;
SIGNAL \a1|a0|Out[2]~0_combout\ : std_logic;
SIGNAL \a2|a1|mux2_2|o1[0]~0_combout\ : std_logic;
SIGNAL \a1|a1|SB[1]~0_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[7]~11_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[7]~12_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[1]~14_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[5]~8_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[5]~9_combout\ : std_logic;
SIGNAL \a1|a1|SB[2]~1_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[2]~2_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[2]~3_combout\ : std_logic;
SIGNAL \a2|a10|Out[0]~1\ : std_logic;
SIGNAL \a2|a10|Out[1]~2_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[1]~5_combout\ : std_logic;
SIGNAL \a2|a6|a23|Add0~6_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[4]~6_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[4]~7_combout\ : std_logic;
SIGNAL \a2|a11|Out[0]~0_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[0]~1_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[0]~2_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[0]~0_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[0]~3_combout\ : std_logic;
SIGNAL \a2|a11|Out[0]~1\ : std_logic;
SIGNAL \a2|a11|Out[1]~2_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[1]~6_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[1]~7_combout\ : std_logic;
SIGNAL \a2|a4|a2|Out[1]~3_combout\ : std_logic;
SIGNAL \a2|a4|a2|Out[1]~4_combout\ : std_logic;
SIGNAL \a2|a11|Out[1]~3\ : std_logic;
SIGNAL \a2|a11|Out[2]~4_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[2]~10_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~1\ : std_logic;
SIGNAL \a2|a7|a23|Add0~2_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[2]~8_combout\ : std_logic;
SIGNAL \a2|a10|Out[2]~4_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[2]~9_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[2]~11_combout\ : std_logic;
SIGNAL \a2|a10|Out[1]~3\ : std_logic;
SIGNAL \a2|a10|Out[2]~5\ : std_logic;
SIGNAL \a2|a10|Out[3]~6_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~3\ : std_logic;
SIGNAL \a2|a7|a23|Add0~4_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[3]~12_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[3]~13_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[3]~15_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[3]~4_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[3]~5_combout\ : std_logic;
SIGNAL \a2|a6|a23|Add0~0_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[1]~0_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[1]~1_combout\ : std_logic;
SIGNAL \a2|a6|a23|Add0~1\ : std_logic;
SIGNAL \a2|a6|a23|Add0~3\ : std_logic;
SIGNAL \a2|a6|a23|Add0~5\ : std_logic;
SIGNAL \a2|a6|a23|Add0~7\ : std_logic;
SIGNAL \a2|a6|a23|Add0~9\ : std_logic;
SIGNAL \a2|a6|a23|Add0~11\ : std_logic;
SIGNAL \a2|a6|a23|Add0~12_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[7]~10_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[7]~13_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[1]~15_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[1]~9_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[6]~10_combout\ : std_logic;
SIGNAL \a2|a6|a23|Add0~10_combout\ : std_logic;
SIGNAL \a2|a3|a1|o1[6]~11_combout\ : std_logic;
SIGNAL \a2|a11|Out[2]~5\ : std_logic;
SIGNAL \a2|a11|Out[3]~7\ : std_logic;
SIGNAL \a2|a11|Out[4]~8_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[4]~18_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~5\ : std_logic;
SIGNAL \a2|a7|a23|Add0~6_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[4]~16_combout\ : std_logic;
SIGNAL \a2|a10|Out[3]~7\ : std_logic;
SIGNAL \a2|a10|Out[4]~8_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[4]~17_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[4]~19_combout\ : std_logic;
SIGNAL \a2|a10|Out[4]~9\ : std_logic;
SIGNAL \a2|a10|Out[5]~10_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~7\ : std_logic;
SIGNAL \a2|a7|a23|Add0~8_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[5]~20_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[5]~21_combout\ : std_logic;
SIGNAL \a2|a4|a2|Out[5]~0_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[5]~22_combout\ : std_logic;
SIGNAL \a2|a11|Out[4]~9\ : std_logic;
SIGNAL \a2|a11|Out[5]~11\ : std_logic;
SIGNAL \a2|a11|Out[6]~12_combout\ : std_logic;
SIGNAL \a2|a4|a2|Out[6]~1_combout\ : std_logic;
SIGNAL \a2|a10|Out[5]~11\ : std_logic;
SIGNAL \a2|a10|Out[6]~12_combout\ : std_logic;
SIGNAL \a2|a7|a23|Add0~9\ : std_logic;
SIGNAL \a2|a7|a23|Add0~10_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[6]~23_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[6]~24_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[6]~25_combout\ : std_logic;
SIGNAL \a2|a10|Out[6]~13\ : std_logic;
SIGNAL \a2|a10|Out[7]~14_combout\ : std_logic;
SIGNAL \a2|a2|mux4_0|mux2_2|o1[7]~0_combout\ : std_logic;
SIGNAL \a2|a2|mux4_0|mux2_2|o1[7]~1_combout\ : std_logic;
SIGNAL \a2|a2|mux4_0|mux2_2|o1[7]~2_combout\ : std_logic;
SIGNAL \a2|a4|a2|Out[7]~2_combout\ : std_logic;
SIGNAL \a2|a2|mux2_2|o1[7]~26_combout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[0]~1_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[1]~3_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[2]~5_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[3]~7_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[4]~9_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[5]~11_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[6]~13_cout\ : std_logic;
SIGNAL \a2|a9|sub_1|Out[7]~14_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[0]~7_combout\ : std_logic;
SIGNAL \a2|a3|a2|Out[0]~8_combout\ : std_logic;
SIGNAL \a1|a1|Done~combout\ : std_logic;
SIGNAL \ln2~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ln1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a2|a3|a2|Out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a1|a0|Out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a2|a5|a2|Out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a2|a4|a2|Out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a1|a1|SA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \a1|a0|ALT_INV_Out\ : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_Start <= Start;
ww_ln1 <= ln1;
ww_ln2 <= ln2;
Out_put <= ww_Out_put;
out_reg1 <= ww_out_reg1;
out_reg2 <= ww_out_reg2;
out_reg3 <= ww_out_reg3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\a1|a0|ALT_INV_Out\(2) <= NOT \a1|a0|Out\(2);

-- Location: LCCOMB_X40_Y35_N14
\a2|a6|a23|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~2_combout\ = (\a2|a3|a2|Out\(2) & ((\a2|a6|a23|Add0~1\) # (GND))) # (!\a2|a3|a2|Out\(2) & (!\a2|a6|a23|Add0~1\))
-- \a2|a6|a23|Add0~3\ = CARRY((\a2|a3|a2|Out\(2)) # (!\a2|a6|a23|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a3|a2|Out\(2),
	datad => VCC,
	cin => \a2|a6|a23|Add0~1\,
	combout => \a2|a6|a23|Add0~2_combout\,
	cout => \a2|a6|a23|Add0~3\);

-- Location: LCCOMB_X40_Y35_N16
\a2|a6|a23|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~4_combout\ = (\a2|a3|a2|Out\(3) & (!\a2|a6|a23|Add0~3\ & VCC)) # (!\a2|a3|a2|Out\(3) & (\a2|a6|a23|Add0~3\ $ (GND)))
-- \a2|a6|a23|Add0~5\ = CARRY((!\a2|a3|a2|Out\(3) & !\a2|a6|a23|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a3|a2|Out\(3),
	datad => VCC,
	cin => \a2|a6|a23|Add0~3\,
	combout => \a2|a6|a23|Add0~4_combout\,
	cout => \a2|a6|a23|Add0~5\);

-- Location: LCCOMB_X40_Y35_N20
\a2|a6|a23|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~8_combout\ = (\a2|a3|a2|Out\(5) & (!\a2|a6|a23|Add0~7\ & VCC)) # (!\a2|a3|a2|Out\(5) & (\a2|a6|a23|Add0~7\ $ (GND)))
-- \a2|a6|a23|Add0~9\ = CARRY((!\a2|a3|a2|Out\(5) & !\a2|a6|a23|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a3|a2|Out\(5),
	datad => VCC,
	cin => \a2|a6|a23|Add0~7\,
	combout => \a2|a6|a23|Add0~8_combout\,
	cout => \a2|a6|a23|Add0~9\);

-- Location: LCCOMB_X45_Y35_N0
\a2|a10|Out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[0]~0_combout\ = (\a2|a4|a2|Out\(0) & (\a2|a5|a2|Out\(0) $ (VCC))) # (!\a2|a4|a2|Out\(0) & (\a2|a5|a2|Out\(0) & VCC))
-- \a2|a10|Out[0]~1\ = CARRY((\a2|a4|a2|Out\(0) & \a2|a5|a2|Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(0),
	datab => \a2|a5|a2|Out\(0),
	datad => VCC,
	combout => \a2|a10|Out[0]~0_combout\,
	cout => \a2|a10|Out[0]~1\);

-- Location: LCCOMB_X43_Y35_N18
\a2|a7|a23|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~0_combout\ = (\a2|a4|a2|Out\(0) & (!\a2|a4|a2|Out\(1) & VCC)) # (!\a2|a4|a2|Out\(0) & (\a2|a4|a2|Out\(1) $ (GND)))
-- \a2|a7|a23|Add0~1\ = CARRY((!\a2|a4|a2|Out\(0) & !\a2|a4|a2|Out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(0),
	datab => \a2|a4|a2|Out\(1),
	datad => VCC,
	combout => \a2|a7|a23|Add0~0_combout\,
	cout => \a2|a7|a23|Add0~1\);

-- Location: LCCOMB_X42_Y35_N16
\a2|a11|Out[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[3]~6_combout\ = (\a2|a3|a2|Out\(3) & ((\a2|a4|a2|Out\(3) & (!\a2|a11|Out[2]~5\)) # (!\a2|a4|a2|Out\(3) & (\a2|a11|Out[2]~5\ & VCC)))) # (!\a2|a3|a2|Out\(3) & ((\a2|a4|a2|Out\(3) & ((\a2|a11|Out[2]~5\) # (GND))) # (!\a2|a4|a2|Out\(3) & 
-- (!\a2|a11|Out[2]~5\))))
-- \a2|a11|Out[3]~7\ = CARRY((\a2|a3|a2|Out\(3) & (\a2|a4|a2|Out\(3) & !\a2|a11|Out[2]~5\)) # (!\a2|a3|a2|Out\(3) & ((\a2|a4|a2|Out\(3)) # (!\a2|a11|Out[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(3),
	datab => \a2|a4|a2|Out\(3),
	datad => VCC,
	cin => \a2|a11|Out[2]~5\,
	combout => \a2|a11|Out[3]~6_combout\,
	cout => \a2|a11|Out[3]~7\);

-- Location: LCCOMB_X42_Y35_N20
\a2|a11|Out[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[5]~10_combout\ = (\a2|a3|a2|Out\(5) & ((\a2|a4|a2|Out\(5) & (!\a2|a11|Out[4]~9\)) # (!\a2|a4|a2|Out\(5) & (\a2|a11|Out[4]~9\ & VCC)))) # (!\a2|a3|a2|Out\(5) & ((\a2|a4|a2|Out\(5) & ((\a2|a11|Out[4]~9\) # (GND))) # (!\a2|a4|a2|Out\(5) & 
-- (!\a2|a11|Out[4]~9\))))
-- \a2|a11|Out[5]~11\ = CARRY((\a2|a3|a2|Out\(5) & (\a2|a4|a2|Out\(5) & !\a2|a11|Out[4]~9\)) # (!\a2|a3|a2|Out\(5) & ((\a2|a4|a2|Out\(5)) # (!\a2|a11|Out[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(5),
	datab => \a2|a4|a2|Out\(5),
	datad => VCC,
	cin => \a2|a11|Out[4]~9\,
	combout => \a2|a11|Out[5]~10_combout\,
	cout => \a2|a11|Out[5]~11\);

-- Location: LCCOMB_X43_Y35_N28
\a2|a7|a23|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~10_combout\ = (\a2|a4|a2|Out\(6) & ((\a2|a7|a23|Add0~9\) # (GND))) # (!\a2|a4|a2|Out\(6) & (!\a2|a7|a23|Add0~9\))
-- \a2|a7|a23|Add0~11\ = CARRY((\a2|a4|a2|Out\(6)) # (!\a2|a7|a23|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(6),
	datad => VCC,
	cin => \a2|a7|a23|Add0~9\,
	combout => \a2|a7|a23|Add0~10_combout\,
	cout => \a2|a7|a23|Add0~11\);

-- Location: LCCOMB_X42_Y35_N22
\a2|a11|Out[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[6]~12_combout\ = ((\a2|a4|a2|Out\(6) $ (\a2|a3|a2|Out\(6) $ (\a2|a11|Out[5]~11\)))) # (GND)
-- \a2|a11|Out[6]~13\ = CARRY((\a2|a4|a2|Out\(6) & (\a2|a3|a2|Out\(6) & !\a2|a11|Out[5]~11\)) # (!\a2|a4|a2|Out\(6) & ((\a2|a3|a2|Out\(6)) # (!\a2|a11|Out[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(6),
	datab => \a2|a3|a2|Out\(6),
	datad => VCC,
	cin => \a2|a11|Out[5]~11\,
	combout => \a2|a11|Out[6]~12_combout\,
	cout => \a2|a11|Out[6]~13\);

-- Location: LCCOMB_X43_Y35_N30
\a2|a7|a23|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~12_combout\ = \a2|a7|a23|Add0~11\ $ (\a2|a4|a2|Out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a2|a4|a2|Out\(7),
	cin => \a2|a7|a23|Add0~11\,
	combout => \a2|a7|a23|Add0~12_combout\);

-- Location: LCCOMB_X42_Y35_N24
\a2|a11|Out[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[7]~14_combout\ = \a2|a4|a2|Out\(7) $ (\a2|a11|Out[6]~13\ $ (!\a2|a3|a2|Out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a4|a2|Out\(7),
	datad => \a2|a3|a2|Out\(7),
	cin => \a2|a11|Out[6]~13\,
	combout => \a2|a11|Out[7]~14_combout\);

-- Location: LCCOMB_X42_Y35_N8
\a2|a3|a2|Out[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[0]~6_combout\ = (\a1|a0|Out\(1) & (((\a2|a4|a2|Out\(0))))) # (!\a1|a0|Out\(1) & ((\a1|a0|Out\(2) & ((\a2|a4|a2|Out\(0)))) # (!\a1|a0|Out\(2) & (\ln1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln1~combout\(0),
	datab => \a2|a4|a2|Out\(0),
	datac => \a1|a0|Out\(1),
	datad => \a1|a0|Out\(2),
	combout => \a2|a3|a2|Out[0]~6_combout\);

-- Location: LCCOMB_X46_Y35_N20
\a1|a1|SA[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a1|SA\(0) = (\a1|a0|Out\(1)) # (\a1|a0|Out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(1),
	datac => \a1|a0|Out\(2),
	combout => \a1|a1|SA\(0));

-- Location: LCCOMB_X46_Y35_N16
\a1|a1|WE[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a1|WE[2]~0_combout\ = (\a1|a0|Out\(1) & ((\a1|a0|Out\(0)))) # (!\a1|a0|Out\(1) & (\a1|a0|Out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(1),
	datac => \a1|a0|Out\(2),
	datad => \a1|a0|Out\(0),
	combout => \a1|a1|WE[2]~0_combout\);

-- Location: LCCOMB_X44_Y35_N6
\a2|a2|mux2_2|o1[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[1]~4_combout\ = (\a1|a0|Out\(0) & ((\a1|a1|SB[1]~0_combout\) # ((\a2|a7|a23|Add0~0_combout\)))) # (!\a1|a0|Out\(0) & (!\a1|a1|SB[1]~0_combout\ & (\a2|a3|a2|Out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(0),
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \a2|a3|a2|Out\(1),
	datad => \a2|a7|a23|Add0~0_combout\,
	combout => \a2|a2|mux2_2|o1[1]~4_combout\);

-- Location: LCCOMB_X43_Y35_N10
\a2|a2|mux2_2|o1[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[3]~14_combout\ = (\a1|a0|Out\(0) & (\a2|a3|a2|Out\(6))) # (!\a1|a0|Out\(0) & ((\a2|a11|Out[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(0),
	datac => \a2|a3|a2|Out\(6),
	datad => \a2|a11|Out[3]~6_combout\,
	combout => \a2|a2|mux2_2|o1[3]~14_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[0]~I\ : cycloneii_io
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
	padio => ww_ln1(0),
	combout => \ln1~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[1]~I\ : cycloneii_io
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
	padio => ww_ln1(1),
	combout => \ln1~combout\(1));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[3]~I\ : cycloneii_io
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
	padio => ww_ln1(3),
	combout => \ln1~combout\(3));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[4]~I\ : cycloneii_io
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
	padio => ww_ln1(4),
	combout => \ln1~combout\(4));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[6]~I\ : cycloneii_io
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
	padio => ww_ln1(6),
	combout => \ln1~combout\(6));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[7]~I\ : cycloneii_io
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
	padio => ww_ln1(7),
	combout => \ln1~combout\(7));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[3]~I\ : cycloneii_io
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
	padio => ww_ln2(3),
	combout => \ln2~combout\(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[6]~I\ : cycloneii_io
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
	padio => ww_ln2(6),
	combout => \ln2~combout\(6));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Start~I\ : cycloneii_io
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
	padio => ww_Start,
	combout => \Start~combout\);

-- Location: LCCOMB_X46_Y35_N22
\a1|a0|Out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a0|Out~1_combout\ = (!\a1|a0|Out\(0) & ((\a1|a0|Out\(2)) # ((\a1|a0|Out\(1)) # (\Start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(2),
	datab => \a1|a0|Out\(1),
	datac => \a1|a0|Out\(0),
	datad => \Start~combout\,
	combout => \a1|a0|Out~1_combout\);

-- Location: LCFF_X46_Y35_N23
\a1|a0|Out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a1|a0|Out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a1|a0|Out\(0));

-- Location: LCCOMB_X46_Y35_N4
\a1|a0|Out[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a0|Out[1]~2_combout\ = \a1|a0|Out\(1) $ (\a1|a0|Out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|Out\(1),
	datad => \a1|a0|Out\(0),
	combout => \a1|a0|Out[1]~2_combout\);

-- Location: LCFF_X46_Y35_N5
\a1|a0|Out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a1|a0|Out[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a1|a0|Out\(1));

-- Location: LCCOMB_X46_Y35_N8
\a1|a0|Out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a0|Out[2]~0_combout\ = \a1|a0|Out\(2) $ (((\a1|a0|Out\(1) & \a1|a0|Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(1),
	datac => \a1|a0|Out\(2),
	datad => \a1|a0|Out\(0),
	combout => \a1|a0|Out[2]~0_combout\);

-- Location: LCFF_X46_Y35_N9
\a1|a0|Out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a1|a0|Out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a1|a0|Out\(2));

-- Location: LCCOMB_X41_Y35_N14
\a2|a1|mux2_2|o1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a1|mux2_2|o1[0]~0_combout\ = (!\a1|a0|Out\(1) & (!\a1|a0|Out\(2) & \a1|a0|Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(1),
	datab => \a1|a0|Out\(2),
	datad => \a1|a0|Out\(0),
	combout => \a2|a1|mux2_2|o1[0]~0_combout\);

-- Location: LCCOMB_X46_Y35_N18
\a1|a1|SB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a1|SB[1]~0_combout\ = (\a1|a0|Out\(2) & ((\a1|a0|Out\(0)))) # (!\a1|a0|Out\(2) & (!\a1|a0|Out\(1) & !\a1|a0|Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(2),
	datac => \a1|a0|Out\(1),
	datad => \a1|a0|Out\(0),
	combout => \a1|a1|SB[1]~0_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[7]~I\ : cycloneii_io
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
	padio => ww_ln2(7),
	combout => \ln2~combout\(7));

-- Location: LCCOMB_X46_Y35_N0
\a2|a3|a2|Out[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[7]~11_combout\ = (\ln1~combout\(7) & (!\a1|a0|Out\(2) & (!\a1|a0|Out\(1) & !\a1|a0|Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln1~combout\(7),
	datab => \a1|a0|Out\(2),
	datac => \a1|a0|Out\(1),
	datad => \a1|a0|Out\(0),
	combout => \a2|a3|a2|Out[7]~11_combout\);

-- Location: LCCOMB_X46_Y35_N2
\a2|a3|a2|Out[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[7]~12_combout\ = (\a2|a3|a2|Out[7]~11_combout\) # ((\a1|a1|SA\(0) & (\a2|a4|a2|Out\(7) & !\a2|a9|sub_1|Out[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SA\(0),
	datab => \a2|a4|a2|Out\(7),
	datac => \a2|a9|sub_1|Out[7]~14_combout\,
	datad => \a2|a3|a2|Out[7]~11_combout\,
	combout => \a2|a3|a2|Out[7]~12_combout\);

-- Location: LCCOMB_X41_Y35_N0
\a2|a3|a2|Out[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[1]~14_combout\ = (\a1|a0|Out\(0)) # ((\a1|a0|Out\(1) & ((\a2|a9|sub_1|Out[7]~14_combout\))) # (!\a1|a0|Out\(1) & (\a1|a0|Out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(1),
	datab => \a1|a0|Out\(0),
	datac => \a1|a0|Out\(2),
	datad => \a2|a9|sub_1|Out[7]~14_combout\,
	combout => \a2|a3|a2|Out[1]~14_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[5]~I\ : cycloneii_io
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
	padio => ww_ln1(5),
	combout => \ln1~combout\(5));

-- Location: LCCOMB_X41_Y35_N26
\a2|a3|a1|o1[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[5]~8_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & ((\a2|a4|a2|Out\(5)) # ((\a2|a3|a2|Out[1]~14_combout\)))) # (!\a2|a3|a2|Out[1]~9_combout\ & (((\ln1~combout\(5) & !\a2|a3|a2|Out[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(5),
	datab => \ln1~combout\(5),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a2|Out[1]~14_combout\,
	combout => \a2|a3|a1|o1[5]~8_combout\);

-- Location: LCCOMB_X41_Y35_N10
\a2|a3|a1|o1[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[5]~9_combout\ = (\a2|a3|a2|Out[1]~14_combout\ & ((\a2|a3|a1|o1[5]~8_combout\ & (\a2|a6|a23|Add0~8_combout\)) # (!\a2|a3|a1|o1[5]~8_combout\ & ((\a2|a3|a2|Out\(5)))))) # (!\a2|a3|a2|Out[1]~14_combout\ & (((\a2|a3|a1|o1[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a6|a23|Add0~8_combout\,
	datab => \a2|a3|a2|Out[1]~14_combout\,
	datac => \a2|a3|a2|Out\(5),
	datad => \a2|a3|a1|o1[5]~8_combout\,
	combout => \a2|a3|a1|o1[5]~9_combout\);

-- Location: LCFF_X41_Y35_N11
\a2|a3|a2|Out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a1|o1[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(5));

-- Location: LCCOMB_X43_Y35_N2
\a1|a1|SB[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a1|SB[2]~1_combout\ = (\a1|a0|Out\(0) & ((\a1|a0|Out\(1)))) # (!\a1|a0|Out\(0) & (\a1|a0|Out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(0),
	datac => \a1|a0|Out\(2),
	datad => \a1|a0|Out\(1),
	combout => \a1|a1|SB[2]~1_combout\);

-- Location: LCFF_X45_Y35_N5
\a2|a5|a2|Out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(3),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln1[2]~I\ : cycloneii_io
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
	padio => ww_ln1(2),
	combout => \ln1~combout\(2));

-- Location: LCCOMB_X41_Y35_N12
\a2|a3|a1|o1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[2]~2_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a3|a2|Out[1]~14_combout\)))) # (!\a2|a3|a2|Out[1]~9_combout\ & ((\a2|a3|a2|Out[1]~14_combout\ & (\a2|a3|a2|Out\(2))) # (!\a2|a3|a2|Out[1]~14_combout\ & ((\ln1~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(2),
	datab => \ln1~combout\(2),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a2|Out[1]~14_combout\,
	combout => \a2|a3|a1|o1[2]~2_combout\);

-- Location: LCCOMB_X41_Y35_N24
\a2|a3|a1|o1[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[2]~3_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & ((\a2|a3|a1|o1[2]~2_combout\ & (\a2|a6|a23|Add0~2_combout\)) # (!\a2|a3|a1|o1[2]~2_combout\ & ((\a2|a4|a2|Out\(2)))))) # (!\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a3|a1|o1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a6|a23|Add0~2_combout\,
	datab => \a2|a4|a2|Out\(2),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a1|o1[2]~2_combout\,
	combout => \a2|a3|a1|o1[2]~3_combout\);

-- Location: LCFF_X41_Y35_N25
\a2|a3|a2|Out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a1|o1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(2));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[1]~I\ : cycloneii_io
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
	padio => ww_ln2(1),
	combout => \ln2~combout\(1));

-- Location: LCFF_X45_Y35_N1
\a2|a5|a2|Out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(1),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(0));

-- Location: LCCOMB_X45_Y35_N2
\a2|a10|Out[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[1]~2_combout\ = (\a2|a4|a2|Out\(1) & ((\a2|a5|a2|Out\(1) & (\a2|a10|Out[0]~1\ & VCC)) # (!\a2|a5|a2|Out\(1) & (!\a2|a10|Out[0]~1\)))) # (!\a2|a4|a2|Out\(1) & ((\a2|a5|a2|Out\(1) & (!\a2|a10|Out[0]~1\)) # (!\a2|a5|a2|Out\(1) & 
-- ((\a2|a10|Out[0]~1\) # (GND)))))
-- \a2|a10|Out[1]~3\ = CARRY((\a2|a4|a2|Out\(1) & (!\a2|a5|a2|Out\(1) & !\a2|a10|Out[0]~1\)) # (!\a2|a4|a2|Out\(1) & ((!\a2|a10|Out[0]~1\) # (!\a2|a5|a2|Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(1),
	datab => \a2|a5|a2|Out\(1),
	datad => VCC,
	cin => \a2|a10|Out[0]~1\,
	combout => \a2|a10|Out[1]~2_combout\,
	cout => \a2|a10|Out[1]~3\);

-- Location: LCCOMB_X44_Y35_N8
\a2|a2|mux2_2|o1[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[1]~5_combout\ = (\a2|a2|mux2_2|o1[1]~4_combout\ & (((\a2|a10|Out[1]~2_combout\)) # (!\a1|a1|SB[1]~0_combout\))) # (!\a2|a2|mux2_2|o1[1]~4_combout\ & (\a1|a1|SB[1]~0_combout\ & (\ln2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a2|mux2_2|o1[1]~4_combout\,
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \ln2~combout\(1),
	datad => \a2|a10|Out[1]~2_combout\,
	combout => \a2|a2|mux2_2|o1[1]~5_combout\);

-- Location: LCCOMB_X40_Y35_N18
\a2|a6|a23|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~6_combout\ = (\a2|a3|a2|Out\(4) & ((\a2|a6|a23|Add0~5\) # (GND))) # (!\a2|a3|a2|Out\(4) & (!\a2|a6|a23|Add0~5\))
-- \a2|a6|a23|Add0~7\ = CARRY((\a2|a3|a2|Out\(4)) # (!\a2|a6|a23|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(4),
	datad => VCC,
	cin => \a2|a6|a23|Add0~5\,
	combout => \a2|a6|a23|Add0~6_combout\,
	cout => \a2|a6|a23|Add0~7\);

-- Location: LCCOMB_X41_Y35_N4
\a2|a3|a1|o1[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[4]~6_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a3|a2|Out[1]~14_combout\)))) # (!\a2|a3|a2|Out[1]~9_combout\ & ((\a2|a3|a2|Out[1]~14_combout\ & ((\a2|a3|a2|Out\(4)))) # (!\a2|a3|a2|Out[1]~14_combout\ & (\ln1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln1~combout\(4),
	datab => \a2|a3|a2|Out\(4),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a2|Out[1]~14_combout\,
	combout => \a2|a3|a1|o1[4]~6_combout\);

-- Location: LCCOMB_X41_Y35_N16
\a2|a3|a1|o1[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[4]~7_combout\ = (\a2|a3|a1|o1[4]~6_combout\ & (((\a2|a6|a23|Add0~6_combout\) # (!\a2|a3|a2|Out[1]~9_combout\)))) # (!\a2|a3|a1|o1[4]~6_combout\ & (\a2|a4|a2|Out\(4) & ((\a2|a3|a2|Out[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(4),
	datab => \a2|a6|a23|Add0~6_combout\,
	datac => \a2|a3|a1|o1[4]~6_combout\,
	datad => \a2|a3|a2|Out[1]~9_combout\,
	combout => \a2|a3|a1|o1[4]~7_combout\);

-- Location: LCFF_X41_Y35_N17
\a2|a3|a2|Out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a1|o1[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(4));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[0]~I\ : cycloneii_io
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
	padio => ww_ln2(0),
	combout => \ln2~combout\(0));

-- Location: LCCOMB_X42_Y35_N10
\a2|a11|Out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[0]~0_combout\ = (\a2|a3|a2|Out\(0) & ((GND) # (!\a2|a4|a2|Out\(0)))) # (!\a2|a3|a2|Out\(0) & (\a2|a4|a2|Out\(0) $ (GND)))
-- \a2|a11|Out[0]~1\ = CARRY((\a2|a3|a2|Out\(0)) # (!\a2|a4|a2|Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(0),
	datab => \a2|a4|a2|Out\(0),
	datad => VCC,
	combout => \a2|a11|Out[0]~0_combout\,
	cout => \a2|a11|Out[0]~1\);

-- Location: LCCOMB_X42_Y35_N26
\a2|a2|mux2_2|o1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[0]~1_combout\ = (\a1|a1|SB[1]~0_combout\ & (((\a1|a0|Out\(0))))) # (!\a1|a1|SB[1]~0_combout\ & ((\a1|a0|Out\(0) & (\a2|a3|a2|Out\(3))) # (!\a1|a0|Out\(0) & ((\a2|a11|Out[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a2|a3|a2|Out\(3),
	datac => \a1|a0|Out\(0),
	datad => \a2|a11|Out[0]~0_combout\,
	combout => \a2|a2|mux2_2|o1[0]~1_combout\);

-- Location: LCCOMB_X43_Y35_N4
\a2|a2|mux2_2|o1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[0]~2_combout\ = (\a1|a1|SB[2]~1_combout\ & (((\a2|a2|mux2_2|o1[0]~1_combout\)))) # (!\a1|a1|SB[2]~1_combout\ & ((\a2|a2|mux2_2|o1[0]~1_combout\ & (\a2|a10|Out[0]~0_combout\)) # (!\a2|a2|mux2_2|o1[0]~1_combout\ & ((\ln2~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a10|Out[0]~0_combout\,
	datab => \a1|a1|SB[2]~1_combout\,
	datac => \ln2~combout\(0),
	datad => \a2|a2|mux2_2|o1[0]~1_combout\,
	combout => \a2|a2|mux2_2|o1[0]~2_combout\);

-- Location: LCCOMB_X44_Y35_N28
\a2|a2|mux2_2|o1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[0]~0_combout\ = (\a1|a0|Out\(0) & (((\a2|a4|a2|Out\(0))))) # (!\a1|a0|Out\(0) & ((\a2|a9|sub_1|Out[7]~14_combout\ & ((\a2|a4|a2|Out\(0)))) # (!\a2|a9|sub_1|Out[7]~14_combout\ & (\a2|a3|a2|Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(0),
	datab => \a2|a4|a2|Out\(0),
	datac => \a1|a0|Out\(0),
	datad => \a2|a9|sub_1|Out[7]~14_combout\,
	combout => \a2|a2|mux2_2|o1[0]~0_combout\);

-- Location: LCCOMB_X44_Y35_N30
\a2|a2|mux2_2|o1[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[0]~3_combout\ = (\a1|a1|SB[1]~0_combout\ & (\a2|a2|mux2_2|o1[0]~2_combout\ & (!\a1|a1|SB[2]~1_combout\))) # (!\a1|a1|SB[1]~0_combout\ & ((\a1|a1|SB[2]~1_combout\ & (\a2|a2|mux2_2|o1[0]~2_combout\)) # (!\a1|a1|SB[2]~1_combout\ & 
-- ((\a2|a2|mux2_2|o1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a2|a2|mux2_2|o1[0]~2_combout\,
	datac => \a1|a1|SB[2]~1_combout\,
	datad => \a2|a2|mux2_2|o1[0]~0_combout\,
	combout => \a2|a2|mux2_2|o1[0]~3_combout\);

-- Location: LCFF_X44_Y35_N31
\a2|a4|a2|Out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a2|mux2_2|o1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(0));

-- Location: LCCOMB_X42_Y35_N12
\a2|a11|Out[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[1]~2_combout\ = (\a2|a3|a2|Out\(1) & ((\a2|a4|a2|Out\(1) & (!\a2|a11|Out[0]~1\)) # (!\a2|a4|a2|Out\(1) & (\a2|a11|Out[0]~1\ & VCC)))) # (!\a2|a3|a2|Out\(1) & ((\a2|a4|a2|Out\(1) & ((\a2|a11|Out[0]~1\) # (GND))) # (!\a2|a4|a2|Out\(1) & 
-- (!\a2|a11|Out[0]~1\))))
-- \a2|a11|Out[1]~3\ = CARRY((\a2|a3|a2|Out\(1) & (\a2|a4|a2|Out\(1) & !\a2|a11|Out[0]~1\)) # (!\a2|a3|a2|Out\(1) & ((\a2|a4|a2|Out\(1)) # (!\a2|a11|Out[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(1),
	datab => \a2|a4|a2|Out\(1),
	datad => VCC,
	cin => \a2|a11|Out[0]~1\,
	combout => \a2|a11|Out[1]~2_combout\,
	cout => \a2|a11|Out[1]~3\);

-- Location: LCCOMB_X41_Y35_N6
\a2|a2|mux2_2|o1[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[1]~6_combout\ = (\a1|a0|Out\(0) & (\a2|a3|a2|Out\(4))) # (!\a1|a0|Out\(0) & ((\a2|a11|Out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2|a3|a2|Out\(4),
	datac => \a2|a11|Out[1]~2_combout\,
	datad => \a1|a0|Out\(0),
	combout => \a2|a2|mux2_2|o1[1]~6_combout\);

-- Location: LCCOMB_X44_Y35_N12
\a2|a2|mux2_2|o1[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[1]~7_combout\ = (\a1|a1|SB[2]~1_combout\ & (!\a1|a1|SB[1]~0_combout\ & ((\a2|a2|mux2_2|o1[1]~6_combout\)))) # (!\a1|a1|SB[2]~1_combout\ & (((\a2|a2|mux2_2|o1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a1|a1|SB[2]~1_combout\,
	datac => \a2|a2|mux2_2|o1[1]~5_combout\,
	datad => \a2|a2|mux2_2|o1[1]~6_combout\,
	combout => \a2|a2|mux2_2|o1[1]~7_combout\);

-- Location: LCCOMB_X44_Y35_N26
\a2|a4|a2|Out[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a4|a2|Out[1]~3_combout\ = (\a1|a0|Out\(1) & (((!\a1|a0|Out\(0) & \a2|a9|sub_1|Out[7]~14_combout\)))) # (!\a1|a0|Out\(1) & (!\a2|a4|a2|Out\(7) & (\a1|a0|Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(7),
	datab => \a1|a0|Out\(1),
	datac => \a1|a0|Out\(0),
	datad => \a2|a9|sub_1|Out[7]~14_combout\,
	combout => \a2|a4|a2|Out[1]~3_combout\);

-- Location: LCCOMB_X44_Y35_N24
\a2|a4|a2|Out[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a4|a2|Out[1]~4_combout\ = (\a1|a0|Out\(2)) # (!\a2|a4|a2|Out[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(2),
	datad => \a2|a4|a2|Out[1]~3_combout\,
	combout => \a2|a4|a2|Out[1]~4_combout\);

-- Location: LCFF_X44_Y35_N13
\a2|a4|a2|Out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a2|mux2_2|o1[1]~7_combout\,
	ena => \a2|a4|a2|Out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(1));

-- Location: LCCOMB_X42_Y35_N14
\a2|a11|Out[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[2]~4_combout\ = ((\a2|a4|a2|Out\(2) $ (\a2|a3|a2|Out\(2) $ (\a2|a11|Out[1]~3\)))) # (GND)
-- \a2|a11|Out[2]~5\ = CARRY((\a2|a4|a2|Out\(2) & (\a2|a3|a2|Out\(2) & !\a2|a11|Out[1]~3\)) # (!\a2|a4|a2|Out\(2) & ((\a2|a3|a2|Out\(2)) # (!\a2|a11|Out[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(2),
	datab => \a2|a3|a2|Out\(2),
	datad => VCC,
	cin => \a2|a11|Out[1]~3\,
	combout => \a2|a11|Out[2]~4_combout\,
	cout => \a2|a11|Out[2]~5\);

-- Location: LCCOMB_X42_Y35_N2
\a2|a2|mux2_2|o1[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[2]~10_combout\ = (\a1|a0|Out\(0) & ((\a2|a3|a2|Out\(5)))) # (!\a1|a0|Out\(0) & (\a2|a11|Out[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(0),
	datac => \a2|a11|Out[2]~4_combout\,
	datad => \a2|a3|a2|Out\(5),
	combout => \a2|a2|mux2_2|o1[2]~10_combout\);

-- Location: LCCOMB_X43_Y35_N20
\a2|a7|a23|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~2_combout\ = (\a2|a4|a2|Out\(2) & ((\a2|a7|a23|Add0~1\) # (GND))) # (!\a2|a4|a2|Out\(2) & (!\a2|a7|a23|Add0~1\))
-- \a2|a7|a23|Add0~3\ = CARRY((\a2|a4|a2|Out\(2)) # (!\a2|a7|a23|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(2),
	datad => VCC,
	cin => \a2|a7|a23|Add0~1\,
	combout => \a2|a7|a23|Add0~2_combout\,
	cout => \a2|a7|a23|Add0~3\);

-- Location: LCCOMB_X42_Y35_N4
\a2|a2|mux2_2|o1[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[2]~8_combout\ = (\a1|a1|SB[1]~0_combout\ & (((\a1|a0|Out\(0))))) # (!\a1|a1|SB[1]~0_combout\ & ((\a1|a0|Out\(0) & ((\a2|a7|a23|Add0~2_combout\))) # (!\a1|a0|Out\(0) & (\a2|a3|a2|Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a2|a3|a2|Out\(2),
	datac => \a1|a0|Out\(0),
	datad => \a2|a7|a23|Add0~2_combout\,
	combout => \a2|a2|mux2_2|o1[2]~8_combout\);

-- Location: LCCOMB_X45_Y35_N4
\a2|a10|Out[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[2]~4_combout\ = ((\a2|a4|a2|Out\(2) $ (\a2|a5|a2|Out\(2) $ (!\a2|a10|Out[1]~3\)))) # (GND)
-- \a2|a10|Out[2]~5\ = CARRY((\a2|a4|a2|Out\(2) & ((\a2|a5|a2|Out\(2)) # (!\a2|a10|Out[1]~3\))) # (!\a2|a4|a2|Out\(2) & (\a2|a5|a2|Out\(2) & !\a2|a10|Out[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(2),
	datab => \a2|a5|a2|Out\(2),
	datad => VCC,
	cin => \a2|a10|Out[1]~3\,
	combout => \a2|a10|Out[2]~4_combout\,
	cout => \a2|a10|Out[2]~5\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[2]~I\ : cycloneii_io
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
	padio => ww_ln2(2),
	combout => \ln2~combout\(2));

-- Location: LCCOMB_X43_Y35_N14
\a2|a2|mux2_2|o1[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[2]~9_combout\ = (\a1|a1|SB[1]~0_combout\ & ((\a2|a2|mux2_2|o1[2]~8_combout\ & (\a2|a10|Out[2]~4_combout\)) # (!\a2|a2|mux2_2|o1[2]~8_combout\ & ((\ln2~combout\(2)))))) # (!\a1|a1|SB[1]~0_combout\ & (\a2|a2|mux2_2|o1[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a2|a2|mux2_2|o1[2]~8_combout\,
	datac => \a2|a10|Out[2]~4_combout\,
	datad => \ln2~combout\(2),
	combout => \a2|a2|mux2_2|o1[2]~9_combout\);

-- Location: LCCOMB_X44_Y35_N2
\a2|a2|mux2_2|o1[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[2]~11_combout\ = (\a1|a1|SB[2]~1_combout\ & (!\a1|a1|SB[1]~0_combout\ & (\a2|a2|mux2_2|o1[2]~10_combout\))) # (!\a1|a1|SB[2]~1_combout\ & (((\a2|a2|mux2_2|o1[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a1|a1|SB[2]~1_combout\,
	datac => \a2|a2|mux2_2|o1[2]~10_combout\,
	datad => \a2|a2|mux2_2|o1[2]~9_combout\,
	combout => \a2|a2|mux2_2|o1[2]~11_combout\);

-- Location: LCFF_X44_Y35_N3
\a2|a4|a2|Out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a2|mux2_2|o1[2]~11_combout\,
	ena => \a2|a4|a2|Out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(2));

-- Location: LCFF_X45_Y35_N3
\a2|a5|a2|Out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(2),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(1));

-- Location: LCCOMB_X45_Y35_N6
\a2|a10|Out[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[3]~6_combout\ = (\a2|a5|a2|Out\(3) & ((\a2|a4|a2|Out\(3) & (\a2|a10|Out[2]~5\ & VCC)) # (!\a2|a4|a2|Out\(3) & (!\a2|a10|Out[2]~5\)))) # (!\a2|a5|a2|Out\(3) & ((\a2|a4|a2|Out\(3) & (!\a2|a10|Out[2]~5\)) # (!\a2|a4|a2|Out\(3) & 
-- ((\a2|a10|Out[2]~5\) # (GND)))))
-- \a2|a10|Out[3]~7\ = CARRY((\a2|a5|a2|Out\(3) & (!\a2|a4|a2|Out\(3) & !\a2|a10|Out[2]~5\)) # (!\a2|a5|a2|Out\(3) & ((!\a2|a10|Out[2]~5\) # (!\a2|a4|a2|Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a5|a2|Out\(3),
	datab => \a2|a4|a2|Out\(3),
	datad => VCC,
	cin => \a2|a10|Out[2]~5\,
	combout => \a2|a10|Out[3]~6_combout\,
	cout => \a2|a10|Out[3]~7\);

-- Location: LCCOMB_X43_Y35_N22
\a2|a7|a23|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~4_combout\ = (\a2|a4|a2|Out\(3) & (!\a2|a7|a23|Add0~3\ & VCC)) # (!\a2|a4|a2|Out\(3) & (\a2|a7|a23|Add0~3\ $ (GND)))
-- \a2|a7|a23|Add0~5\ = CARRY((!\a2|a4|a2|Out\(3) & !\a2|a7|a23|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(3),
	datad => VCC,
	cin => \a2|a7|a23|Add0~3\,
	combout => \a2|a7|a23|Add0~4_combout\,
	cout => \a2|a7|a23|Add0~5\);

-- Location: LCCOMB_X43_Y35_N16
\a2|a2|mux2_2|o1[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[3]~12_combout\ = (\a1|a0|Out\(0) & (((\a1|a1|SB[1]~0_combout\) # (\a2|a7|a23|Add0~4_combout\)))) # (!\a1|a0|Out\(0) & (\a2|a3|a2|Out\(3) & (!\a1|a1|SB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(3),
	datab => \a1|a0|Out\(0),
	datac => \a1|a1|SB[1]~0_combout\,
	datad => \a2|a7|a23|Add0~4_combout\,
	combout => \a2|a2|mux2_2|o1[3]~12_combout\);

-- Location: LCCOMB_X44_Y35_N22
\a2|a2|mux2_2|o1[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[3]~13_combout\ = (\a1|a1|SB[1]~0_combout\ & ((\a2|a2|mux2_2|o1[3]~12_combout\ & ((\a2|a10|Out[3]~6_combout\))) # (!\a2|a2|mux2_2|o1[3]~12_combout\ & (\ln2~combout\(3))))) # (!\a1|a1|SB[1]~0_combout\ & 
-- (((\a2|a2|mux2_2|o1[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln2~combout\(3),
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \a2|a10|Out[3]~6_combout\,
	datad => \a2|a2|mux2_2|o1[3]~12_combout\,
	combout => \a2|a2|mux2_2|o1[3]~13_combout\);

-- Location: LCCOMB_X44_Y35_N16
\a2|a2|mux2_2|o1[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[3]~15_combout\ = (\a1|a1|SB[2]~1_combout\ & (\a2|a2|mux2_2|o1[3]~14_combout\ & (!\a1|a1|SB[1]~0_combout\))) # (!\a1|a1|SB[2]~1_combout\ & (((\a2|a2|mux2_2|o1[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a2|mux2_2|o1[3]~14_combout\,
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \a1|a1|SB[2]~1_combout\,
	datad => \a2|a2|mux2_2|o1[3]~13_combout\,
	combout => \a2|a2|mux2_2|o1[3]~15_combout\);

-- Location: LCFF_X44_Y35_N17
\a2|a4|a2|Out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a2|mux2_2|o1[3]~15_combout\,
	ena => \a2|a4|a2|Out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(3));

-- Location: LCCOMB_X41_Y35_N18
\a2|a3|a1|o1[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[3]~4_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a4|a2|Out\(3)) # (\a2|a3|a2|Out[1]~14_combout\)))) # (!\a2|a3|a2|Out[1]~9_combout\ & (\ln1~combout\(3) & ((!\a2|a3|a2|Out[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln1~combout\(3),
	datab => \a2|a4|a2|Out\(3),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a2|Out[1]~14_combout\,
	combout => \a2|a3|a1|o1[3]~4_combout\);

-- Location: LCCOMB_X41_Y35_N30
\a2|a3|a1|o1[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[3]~5_combout\ = (\a2|a3|a2|Out[1]~14_combout\ & ((\a2|a3|a1|o1[3]~4_combout\ & (\a2|a6|a23|Add0~4_combout\)) # (!\a2|a3|a1|o1[3]~4_combout\ & ((\a2|a3|a2|Out\(3)))))) # (!\a2|a3|a2|Out[1]~14_combout\ & (((\a2|a3|a1|o1[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a6|a23|Add0~4_combout\,
	datab => \a2|a3|a2|Out[1]~14_combout\,
	datac => \a2|a3|a2|Out\(3),
	datad => \a2|a3|a1|o1[3]~4_combout\,
	combout => \a2|a3|a1|o1[3]~5_combout\);

-- Location: LCFF_X41_Y35_N31
\a2|a3|a2|Out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a1|o1[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(3));

-- Location: LCCOMB_X40_Y35_N12
\a2|a6|a23|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~0_combout\ = (\a2|a3|a2|Out\(0) & (!\a2|a3|a2|Out\(1) & VCC)) # (!\a2|a3|a2|Out\(0) & (\a2|a3|a2|Out\(1) $ (GND)))
-- \a2|a6|a23|Add0~1\ = CARRY((!\a2|a3|a2|Out\(0) & !\a2|a3|a2|Out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(0),
	datab => \a2|a3|a2|Out\(1),
	datad => VCC,
	combout => \a2|a6|a23|Add0~0_combout\,
	cout => \a2|a6|a23|Add0~1\);

-- Location: LCCOMB_X41_Y35_N22
\a2|a3|a1|o1[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[1]~0_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a4|a2|Out\(1)) # (\a2|a3|a2|Out[1]~14_combout\)))) # (!\a2|a3|a2|Out[1]~9_combout\ & (\ln1~combout\(1) & ((!\a2|a3|a2|Out[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln1~combout\(1),
	datab => \a2|a4|a2|Out\(1),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a2|Out[1]~14_combout\,
	combout => \a2|a3|a1|o1[1]~0_combout\);

-- Location: LCCOMB_X44_Y35_N0
\a2|a3|a1|o1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[1]~1_combout\ = (\a2|a3|a2|Out[1]~14_combout\ & ((\a2|a3|a1|o1[1]~0_combout\ & (\a2|a6|a23|Add0~0_combout\)) # (!\a2|a3|a1|o1[1]~0_combout\ & ((\a2|a3|a2|Out\(1)))))) # (!\a2|a3|a2|Out[1]~14_combout\ & (((\a2|a3|a1|o1[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out[1]~14_combout\,
	datab => \a2|a6|a23|Add0~0_combout\,
	datac => \a2|a3|a2|Out\(1),
	datad => \a2|a3|a1|o1[1]~0_combout\,
	combout => \a2|a3|a1|o1[1]~1_combout\);

-- Location: LCFF_X44_Y35_N1
\a2|a3|a2|Out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a1|o1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(1));

-- Location: LCCOMB_X40_Y35_N22
\a2|a6|a23|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~10_combout\ = (\a2|a3|a2|Out\(6) & ((\a2|a6|a23|Add0~9\) # (GND))) # (!\a2|a3|a2|Out\(6) & (!\a2|a6|a23|Add0~9\))
-- \a2|a6|a23|Add0~11\ = CARRY((\a2|a3|a2|Out\(6)) # (!\a2|a6|a23|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a3|a2|Out\(6),
	datad => VCC,
	cin => \a2|a6|a23|Add0~9\,
	combout => \a2|a6|a23|Add0~10_combout\,
	cout => \a2|a6|a23|Add0~11\);

-- Location: LCCOMB_X40_Y35_N24
\a2|a6|a23|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a6|a23|Add0~12_combout\ = \a2|a6|a23|Add0~11\ $ (\a2|a3|a2|Out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a2|a3|a2|Out\(7),
	cin => \a2|a6|a23|Add0~11\,
	combout => \a2|a6|a23|Add0~12_combout\);

-- Location: LCCOMB_X46_Y35_N10
\a2|a3|a2|Out[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[7]~10_combout\ = ((!\a1|a1|SA\(0) & (\a1|a0|Out\(0) & \a2|a6|a23|Add0~12_combout\))) # (!\a2|a3|a2|Out[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SA\(0),
	datab => \a1|a0|Out\(0),
	datac => \a2|a6|a23|Add0~12_combout\,
	datad => \a2|a3|a2|Out[0]~7_combout\,
	combout => \a2|a3|a2|Out[7]~10_combout\);

-- Location: LCCOMB_X46_Y35_N6
\a2|a3|a2|Out[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[7]~13_combout\ = (\a1|a1|WE[2]~0_combout\ & (((\a2|a3|a2|Out\(7) & \a2|a3|a2|Out[7]~10_combout\)))) # (!\a1|a1|WE[2]~0_combout\ & ((\a2|a3|a2|Out[7]~12_combout\) # ((\a2|a3|a2|Out\(7) & \a2|a3|a2|Out[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|WE[2]~0_combout\,
	datab => \a2|a3|a2|Out[7]~12_combout\,
	datac => \a2|a3|a2|Out\(7),
	datad => \a2|a3|a2|Out[7]~10_combout\,
	combout => \a2|a3|a2|Out[7]~13_combout\);

-- Location: LCFF_X46_Y35_N7
\a2|a3|a2|Out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a2|Out[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(7));

-- Location: LCCOMB_X41_Y35_N2
\a2|a3|a2|Out[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[1]~15_combout\ = (\a1|a0|Out\(1) & (!\a1|a0|Out\(0))) # (!\a1|a0|Out\(1) & ((\a1|a0|Out\(2)) # ((\a1|a0|Out\(0) & \a2|a3|a2|Out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(1),
	datab => \a1|a0|Out\(0),
	datac => \a1|a0|Out\(2),
	datad => \a2|a3|a2|Out\(7),
	combout => \a2|a3|a2|Out[1]~15_combout\);

-- Location: LCCOMB_X41_Y35_N20
\a2|a3|a2|Out[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[1]~9_combout\ = (\a2|a3|a2|Out[1]~15_combout\ & ((\a1|a0|Out\(1) & ((!\a2|a9|sub_1|Out[7]~14_combout\))) # (!\a1|a0|Out\(1) & (!\a1|a0|Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(1),
	datab => \a2|a3|a2|Out[1]~15_combout\,
	datac => \a1|a0|Out\(2),
	datad => \a2|a9|sub_1|Out[7]~14_combout\,
	combout => \a2|a3|a2|Out[1]~9_combout\);

-- Location: LCCOMB_X41_Y35_N8
\a2|a3|a1|o1[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[6]~10_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a3|a2|Out[1]~14_combout\)))) # (!\a2|a3|a2|Out[1]~9_combout\ & ((\a2|a3|a2|Out[1]~14_combout\ & ((\a2|a3|a2|Out\(6)))) # (!\a2|a3|a2|Out[1]~14_combout\ & (\ln1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln1~combout\(6),
	datab => \a2|a3|a2|Out\(6),
	datac => \a2|a3|a2|Out[1]~9_combout\,
	datad => \a2|a3|a2|Out[1]~14_combout\,
	combout => \a2|a3|a1|o1[6]~10_combout\);

-- Location: LCCOMB_X41_Y35_N28
\a2|a3|a1|o1[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a1|o1[6]~11_combout\ = (\a2|a3|a2|Out[1]~9_combout\ & ((\a2|a3|a1|o1[6]~10_combout\ & ((\a2|a6|a23|Add0~10_combout\))) # (!\a2|a3|a1|o1[6]~10_combout\ & (\a2|a4|a2|Out\(6))))) # (!\a2|a3|a2|Out[1]~9_combout\ & (((\a2|a3|a1|o1[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out[1]~9_combout\,
	datab => \a2|a4|a2|Out\(6),
	datac => \a2|a3|a1|o1[6]~10_combout\,
	datad => \a2|a6|a23|Add0~10_combout\,
	combout => \a2|a3|a1|o1[6]~11_combout\);

-- Location: LCFF_X41_Y35_N29
\a2|a3|a2|Out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a1|o1[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(6));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[5]~I\ : cycloneii_io
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
	padio => ww_ln2(5),
	combout => \ln2~combout\(5));

-- Location: LCCOMB_X42_Y35_N18
\a2|a11|Out[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a11|Out[4]~8_combout\ = ((\a2|a4|a2|Out\(4) $ (\a2|a3|a2|Out\(4) $ (\a2|a11|Out[3]~7\)))) # (GND)
-- \a2|a11|Out[4]~9\ = CARRY((\a2|a4|a2|Out\(4) & (\a2|a3|a2|Out\(4) & !\a2|a11|Out[3]~7\)) # (!\a2|a4|a2|Out\(4) & ((\a2|a3|a2|Out\(4)) # (!\a2|a11|Out[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(4),
	datab => \a2|a3|a2|Out\(4),
	datad => VCC,
	cin => \a2|a11|Out[3]~7\,
	combout => \a2|a11|Out[4]~8_combout\,
	cout => \a2|a11|Out[4]~9\);

-- Location: LCCOMB_X43_Y35_N6
\a2|a2|mux2_2|o1[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[4]~18_combout\ = (\a1|a0|Out\(0) & (\a2|a3|a2|Out\(7))) # (!\a1|a0|Out\(0) & ((\a2|a11|Out[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(0),
	datac => \a2|a3|a2|Out\(7),
	datad => \a2|a11|Out[4]~8_combout\,
	combout => \a2|a2|mux2_2|o1[4]~18_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ln2[4]~I\ : cycloneii_io
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
	padio => ww_ln2(4),
	combout => \ln2~combout\(4));

-- Location: LCCOMB_X43_Y35_N24
\a2|a7|a23|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~6_combout\ = (\a2|a4|a2|Out\(4) & ((\a2|a7|a23|Add0~5\) # (GND))) # (!\a2|a4|a2|Out\(4) & (!\a2|a7|a23|Add0~5\))
-- \a2|a7|a23|Add0~7\ = CARRY((\a2|a4|a2|Out\(4)) # (!\a2|a7|a23|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a4|a2|Out\(4),
	datad => VCC,
	cin => \a2|a7|a23|Add0~5\,
	combout => \a2|a7|a23|Add0~6_combout\,
	cout => \a2|a7|a23|Add0~7\);

-- Location: LCCOMB_X42_Y35_N0
\a2|a2|mux2_2|o1[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[4]~16_combout\ = (\a1|a1|SB[1]~0_combout\ & (((\a1|a0|Out\(0))))) # (!\a1|a1|SB[1]~0_combout\ & ((\a1|a0|Out\(0) & ((\a2|a7|a23|Add0~6_combout\))) # (!\a1|a0|Out\(0) & (\a2|a3|a2|Out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a2|a3|a2|Out\(4),
	datac => \a1|a0|Out\(0),
	datad => \a2|a7|a23|Add0~6_combout\,
	combout => \a2|a2|mux2_2|o1[4]~16_combout\);

-- Location: LCCOMB_X45_Y35_N8
\a2|a10|Out[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[4]~8_combout\ = ((\a2|a5|a2|Out\(4) $ (\a2|a4|a2|Out\(4) $ (!\a2|a10|Out[3]~7\)))) # (GND)
-- \a2|a10|Out[4]~9\ = CARRY((\a2|a5|a2|Out\(4) & ((\a2|a4|a2|Out\(4)) # (!\a2|a10|Out[3]~7\))) # (!\a2|a5|a2|Out\(4) & (\a2|a4|a2|Out\(4) & !\a2|a10|Out[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a5|a2|Out\(4),
	datab => \a2|a4|a2|Out\(4),
	datad => VCC,
	cin => \a2|a10|Out[3]~7\,
	combout => \a2|a10|Out[4]~8_combout\,
	cout => \a2|a10|Out[4]~9\);

-- Location: LCCOMB_X43_Y35_N8
\a2|a2|mux2_2|o1[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[4]~17_combout\ = (\a1|a1|SB[1]~0_combout\ & ((\a2|a2|mux2_2|o1[4]~16_combout\ & ((\a2|a10|Out[4]~8_combout\))) # (!\a2|a2|mux2_2|o1[4]~16_combout\ & (\ln2~combout\(4))))) # (!\a1|a1|SB[1]~0_combout\ & 
-- (((\a2|a2|mux2_2|o1[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \ln2~combout\(4),
	datac => \a2|a2|mux2_2|o1[4]~16_combout\,
	datad => \a2|a10|Out[4]~8_combout\,
	combout => \a2|a2|mux2_2|o1[4]~17_combout\);

-- Location: LCCOMB_X44_Y35_N18
\a2|a2|mux2_2|o1[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[4]~19_combout\ = (\a1|a1|SB[2]~1_combout\ & (!\a1|a1|SB[1]~0_combout\ & (\a2|a2|mux2_2|o1[4]~18_combout\))) # (!\a1|a1|SB[2]~1_combout\ & (((\a2|a2|mux2_2|o1[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \a1|a1|SB[2]~1_combout\,
	datac => \a2|a2|mux2_2|o1[4]~18_combout\,
	datad => \a2|a2|mux2_2|o1[4]~17_combout\,
	combout => \a2|a2|mux2_2|o1[4]~19_combout\);

-- Location: LCFF_X44_Y35_N19
\a2|a4|a2|Out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a2|mux2_2|o1[4]~19_combout\,
	ena => \a2|a4|a2|Out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(4));

-- Location: LCCOMB_X45_Y35_N10
\a2|a10|Out[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[5]~10_combout\ = (\a2|a5|a2|Out\(5) & ((\a2|a4|a2|Out\(5) & (\a2|a10|Out[4]~9\ & VCC)) # (!\a2|a4|a2|Out\(5) & (!\a2|a10|Out[4]~9\)))) # (!\a2|a5|a2|Out\(5) & ((\a2|a4|a2|Out\(5) & (!\a2|a10|Out[4]~9\)) # (!\a2|a4|a2|Out\(5) & 
-- ((\a2|a10|Out[4]~9\) # (GND)))))
-- \a2|a10|Out[5]~11\ = CARRY((\a2|a5|a2|Out\(5) & (!\a2|a4|a2|Out\(5) & !\a2|a10|Out[4]~9\)) # (!\a2|a5|a2|Out\(5) & ((!\a2|a10|Out[4]~9\) # (!\a2|a4|a2|Out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a5|a2|Out\(5),
	datab => \a2|a4|a2|Out\(5),
	datad => VCC,
	cin => \a2|a10|Out[4]~9\,
	combout => \a2|a10|Out[5]~10_combout\,
	cout => \a2|a10|Out[5]~11\);

-- Location: LCCOMB_X43_Y35_N26
\a2|a7|a23|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a7|a23|Add0~8_combout\ = (\a2|a4|a2|Out\(5) & (!\a2|a7|a23|Add0~7\ & VCC)) # (!\a2|a4|a2|Out\(5) & (\a2|a7|a23|Add0~7\ $ (GND)))
-- \a2|a7|a23|Add0~9\ = CARRY((!\a2|a4|a2|Out\(5) & !\a2|a7|a23|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a4|a2|Out\(5),
	datad => VCC,
	cin => \a2|a7|a23|Add0~7\,
	combout => \a2|a7|a23|Add0~8_combout\,
	cout => \a2|a7|a23|Add0~9\);

-- Location: LCCOMB_X42_Y35_N6
\a2|a2|mux2_2|o1[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[5]~20_combout\ = (\a1|a0|Out\(0) & ((\a1|a1|SB[1]~0_combout\) # ((\a2|a7|a23|Add0~8_combout\)))) # (!\a1|a0|Out\(0) & (!\a1|a1|SB[1]~0_combout\ & ((\a2|a3|a2|Out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(0),
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \a2|a7|a23|Add0~8_combout\,
	datad => \a2|a3|a2|Out\(5),
	combout => \a2|a2|mux2_2|o1[5]~20_combout\);

-- Location: LCCOMB_X42_Y35_N28
\a2|a2|mux2_2|o1[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[5]~21_combout\ = (\a1|a1|SB[1]~0_combout\ & ((\a2|a2|mux2_2|o1[5]~20_combout\ & ((\a2|a10|Out[5]~10_combout\))) # (!\a2|a2|mux2_2|o1[5]~20_combout\ & (\ln2~combout\(5))))) # (!\a1|a1|SB[1]~0_combout\ & 
-- (((\a2|a2|mux2_2|o1[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a1|SB[1]~0_combout\,
	datab => \ln2~combout\(5),
	datac => \a2|a10|Out[5]~10_combout\,
	datad => \a2|a2|mux2_2|o1[5]~20_combout\,
	combout => \a2|a2|mux2_2|o1[5]~21_combout\);

-- Location: LCCOMB_X43_Y35_N0
\a2|a4|a2|Out[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a4|a2|Out[5]~0_combout\ = (\a1|a0|Out\(2) & (\a2|a11|Out[5]~10_combout\)) # (!\a1|a0|Out\(2) & ((\a2|a2|mux2_2|o1[5]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a11|Out[5]~10_combout\,
	datab => \a1|a0|Out\(2),
	datad => \a2|a2|mux2_2|o1[5]~21_combout\,
	combout => \a2|a4|a2|Out[5]~0_combout\);

-- Location: LCCOMB_X42_Y35_N30
\a2|a2|mux2_2|o1[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[5]~22_combout\ = (!\a1|a0|Out\(1) & \a2|a2|mux2_2|o1[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|Out\(1),
	datad => \a2|a2|mux2_2|o1[5]~21_combout\,
	combout => \a2|a2|mux2_2|o1[5]~22_combout\);

-- Location: LCFF_X43_Y35_N1
\a2|a4|a2|Out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a4|a2|Out[5]~0_combout\,
	sdata => \a2|a2|mux2_2|o1[5]~22_combout\,
	sload => \a1|a0|Out\(0),
	ena => \a2|a4|a2|Out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(5));

-- Location: LCCOMB_X44_Y35_N4
\a2|a4|a2|Out[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a4|a2|Out[6]~1_combout\ = (\a1|a0|Out\(2) & ((\a2|a11|Out[6]~12_combout\))) # (!\a1|a0|Out\(2) & (\a2|a2|mux2_2|o1[6]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a2|mux2_2|o1[6]~24_combout\,
	datab => \a2|a11|Out[6]~12_combout\,
	datad => \a1|a0|Out\(2),
	combout => \a2|a4|a2|Out[6]~1_combout\);

-- Location: LCCOMB_X45_Y35_N12
\a2|a10|Out[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[6]~12_combout\ = ((\a2|a5|a2|Out\(6) $ (\a2|a4|a2|Out\(6) $ (!\a2|a10|Out[5]~11\)))) # (GND)
-- \a2|a10|Out[6]~13\ = CARRY((\a2|a5|a2|Out\(6) & ((\a2|a4|a2|Out\(6)) # (!\a2|a10|Out[5]~11\))) # (!\a2|a5|a2|Out\(6) & (\a2|a4|a2|Out\(6) & !\a2|a10|Out[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a5|a2|Out\(6),
	datab => \a2|a4|a2|Out\(6),
	datad => VCC,
	cin => \a2|a10|Out[5]~11\,
	combout => \a2|a10|Out[6]~12_combout\,
	cout => \a2|a10|Out[6]~13\);

-- Location: LCCOMB_X43_Y35_N12
\a2|a2|mux2_2|o1[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[6]~23_combout\ = (\a1|a0|Out\(0) & (((\a1|a1|SB[1]~0_combout\) # (\a2|a7|a23|Add0~10_combout\)))) # (!\a1|a0|Out\(0) & (\a2|a3|a2|Out\(6) & (!\a1|a1|SB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(6),
	datab => \a1|a0|Out\(0),
	datac => \a1|a1|SB[1]~0_combout\,
	datad => \a2|a7|a23|Add0~10_combout\,
	combout => \a2|a2|mux2_2|o1[6]~23_combout\);

-- Location: LCCOMB_X44_Y35_N20
\a2|a2|mux2_2|o1[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[6]~24_combout\ = (\a1|a1|SB[1]~0_combout\ & ((\a2|a2|mux2_2|o1[6]~23_combout\ & ((\a2|a10|Out[6]~12_combout\))) # (!\a2|a2|mux2_2|o1[6]~23_combout\ & (\ln2~combout\(6))))) # (!\a1|a1|SB[1]~0_combout\ & 
-- (((\a2|a2|mux2_2|o1[6]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ln2~combout\(6),
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \a2|a10|Out[6]~12_combout\,
	datad => \a2|a2|mux2_2|o1[6]~23_combout\,
	combout => \a2|a2|mux2_2|o1[6]~24_combout\);

-- Location: LCCOMB_X44_Y35_N14
\a2|a2|mux2_2|o1[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[6]~25_combout\ = (!\a1|a0|Out\(1) & \a2|a2|mux2_2|o1[6]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(1),
	datac => \a2|a2|mux2_2|o1[6]~24_combout\,
	combout => \a2|a2|mux2_2|o1[6]~25_combout\);

-- Location: LCFF_X44_Y35_N5
\a2|a4|a2|Out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a4|a2|Out[6]~1_combout\,
	sdata => \a2|a2|mux2_2|o1[6]~25_combout\,
	sload => \a1|a0|Out\(0),
	ena => \a2|a4|a2|Out[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(6));

-- Location: LCCOMB_X45_Y35_N14
\a2|a10|Out[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a10|Out[7]~14_combout\ = \a2|a10|Out[6]~13\ $ (\a2|a4|a2|Out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \a2|a4|a2|Out\(7),
	cin => \a2|a10|Out[6]~13\,
	combout => \a2|a10|Out[7]~14_combout\);

-- Location: LCCOMB_X46_Y35_N12
\a2|a2|mux4_0|mux2_2|o1[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux4_0|mux2_2|o1[7]~0_combout\ = (\a1|a0|Out\(0) & (((\a2|a10|Out[7]~14_combout\)) # (!\a1|a1|SB[1]~0_combout\))) # (!\a1|a0|Out\(0) & (\a1|a1|SB[1]~0_combout\ & (\ln2~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(0),
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \ln2~combout\(7),
	datad => \a2|a10|Out[7]~14_combout\,
	combout => \a2|a2|mux4_0|mux2_2|o1[7]~0_combout\);

-- Location: LCCOMB_X46_Y35_N30
\a2|a2|mux4_0|mux2_2|o1[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux4_0|mux2_2|o1[7]~1_combout\ = (\a2|a9|sub_1|Out[7]~14_combout\ & (((\a2|a4|a2|Out\(7))))) # (!\a2|a9|sub_1|Out[7]~14_combout\ & ((\a2|a2|mux4_0|mux2_2|o1[7]~0_combout\ & ((\a2|a4|a2|Out\(7)))) # (!\a2|a2|mux4_0|mux2_2|o1[7]~0_combout\ & 
-- (\a2|a3|a2|Out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(7),
	datab => \a2|a4|a2|Out\(7),
	datac => \a2|a9|sub_1|Out[7]~14_combout\,
	datad => \a2|a2|mux4_0|mux2_2|o1[7]~0_combout\,
	combout => \a2|a2|mux4_0|mux2_2|o1[7]~1_combout\);

-- Location: LCCOMB_X46_Y35_N28
\a2|a2|mux4_0|mux2_2|o1[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux4_0|mux2_2|o1[7]~2_combout\ = (\a1|a1|SB[1]~0_combout\ & (((\a2|a2|mux4_0|mux2_2|o1[7]~0_combout\)))) # (!\a1|a1|SB[1]~0_combout\ & (\a2|a2|mux4_0|mux2_2|o1[7]~1_combout\ & ((\a2|a7|a23|Add0~12_combout\) # 
-- (!\a2|a2|mux4_0|mux2_2|o1[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a7|a23|Add0~12_combout\,
	datab => \a1|a1|SB[1]~0_combout\,
	datac => \a2|a2|mux4_0|mux2_2|o1[7]~0_combout\,
	datad => \a2|a2|mux4_0|mux2_2|o1[7]~1_combout\,
	combout => \a2|a2|mux4_0|mux2_2|o1[7]~2_combout\);

-- Location: LCCOMB_X46_Y35_N24
\a2|a4|a2|Out[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a4|a2|Out[7]~2_combout\ = (\a1|a0|Out\(2) & (\a2|a11|Out[7]~14_combout\)) # (!\a1|a0|Out\(2) & ((\a2|a2|mux4_0|mux2_2|o1[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a11|Out[7]~14_combout\,
	datab => \a1|a0|Out\(2),
	datad => \a2|a2|mux4_0|mux2_2|o1[7]~2_combout\,
	combout => \a2|a4|a2|Out[7]~2_combout\);

-- Location: LCCOMB_X46_Y35_N14
\a2|a2|mux2_2|o1[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a2|mux2_2|o1[7]~26_combout\ = (!\a1|a0|Out\(1) & \a2|a2|mux4_0|mux2_2|o1[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1|a0|Out\(1),
	datad => \a2|a2|mux4_0|mux2_2|o1[7]~2_combout\,
	combout => \a2|a2|mux2_2|o1[7]~26_combout\);

-- Location: LCFF_X46_Y35_N25
\a2|a4|a2|Out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a4|a2|Out[7]~2_combout\,
	sdata => \a2|a2|mux2_2|o1[7]~26_combout\,
	sload => \a1|a0|Out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a4|a2|Out\(7));

-- Location: LCCOMB_X45_Y35_N16
\a2|a9|sub_1|Out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[0]~1_cout\ = CARRY((\a2|a4|a2|Out\(0)) # (!\a2|a3|a2|Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(0),
	datab => \a2|a4|a2|Out\(0),
	datad => VCC,
	cout => \a2|a9|sub_1|Out[0]~1_cout\);

-- Location: LCCOMB_X45_Y35_N18
\a2|a9|sub_1|Out[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[1]~3_cout\ = CARRY((\a2|a3|a2|Out\(1) & ((!\a2|a9|sub_1|Out[0]~1_cout\) # (!\a2|a4|a2|Out\(1)))) # (!\a2|a3|a2|Out\(1) & (!\a2|a4|a2|Out\(1) & !\a2|a9|sub_1|Out[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(1),
	datab => \a2|a4|a2|Out\(1),
	datad => VCC,
	cin => \a2|a9|sub_1|Out[0]~1_cout\,
	cout => \a2|a9|sub_1|Out[1]~3_cout\);

-- Location: LCCOMB_X45_Y35_N20
\a2|a9|sub_1|Out[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[2]~5_cout\ = CARRY((\a2|a4|a2|Out\(2) & ((!\a2|a9|sub_1|Out[1]~3_cout\) # (!\a2|a3|a2|Out\(2)))) # (!\a2|a4|a2|Out\(2) & (!\a2|a3|a2|Out\(2) & !\a2|a9|sub_1|Out[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(2),
	datab => \a2|a3|a2|Out\(2),
	datad => VCC,
	cin => \a2|a9|sub_1|Out[1]~3_cout\,
	cout => \a2|a9|sub_1|Out[2]~5_cout\);

-- Location: LCCOMB_X45_Y35_N22
\a2|a9|sub_1|Out[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[3]~7_cout\ = CARRY((\a2|a4|a2|Out\(3) & (\a2|a3|a2|Out\(3) & !\a2|a9|sub_1|Out[2]~5_cout\)) # (!\a2|a4|a2|Out\(3) & ((\a2|a3|a2|Out\(3)) # (!\a2|a9|sub_1|Out[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a4|a2|Out\(3),
	datab => \a2|a3|a2|Out\(3),
	datad => VCC,
	cin => \a2|a9|sub_1|Out[2]~5_cout\,
	cout => \a2|a9|sub_1|Out[3]~7_cout\);

-- Location: LCCOMB_X45_Y35_N24
\a2|a9|sub_1|Out[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[4]~9_cout\ = CARRY((\a2|a3|a2|Out\(4) & (\a2|a4|a2|Out\(4) & !\a2|a9|sub_1|Out[3]~7_cout\)) # (!\a2|a3|a2|Out\(4) & ((\a2|a4|a2|Out\(4)) # (!\a2|a9|sub_1|Out[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(4),
	datab => \a2|a4|a2|Out\(4),
	datad => VCC,
	cin => \a2|a9|sub_1|Out[3]~7_cout\,
	cout => \a2|a9|sub_1|Out[4]~9_cout\);

-- Location: LCCOMB_X45_Y35_N26
\a2|a9|sub_1|Out[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[5]~11_cout\ = CARRY((\a2|a3|a2|Out\(5) & ((!\a2|a9|sub_1|Out[4]~9_cout\) # (!\a2|a4|a2|Out\(5)))) # (!\a2|a3|a2|Out\(5) & (!\a2|a4|a2|Out\(5) & !\a2|a9|sub_1|Out[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(5),
	datab => \a2|a4|a2|Out\(5),
	datad => VCC,
	cin => \a2|a9|sub_1|Out[4]~9_cout\,
	cout => \a2|a9|sub_1|Out[5]~11_cout\);

-- Location: LCCOMB_X45_Y35_N28
\a2|a9|sub_1|Out[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[6]~13_cout\ = CARRY((\a2|a3|a2|Out\(6) & (\a2|a4|a2|Out\(6) & !\a2|a9|sub_1|Out[5]~11_cout\)) # (!\a2|a3|a2|Out\(6) & ((\a2|a4|a2|Out\(6)) # (!\a2|a9|sub_1|Out[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out\(6),
	datab => \a2|a4|a2|Out\(6),
	datad => VCC,
	cin => \a2|a9|sub_1|Out[5]~11_cout\,
	cout => \a2|a9|sub_1|Out[6]~13_cout\);

-- Location: LCCOMB_X45_Y35_N30
\a2|a9|sub_1|Out[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a9|sub_1|Out[7]~14_combout\ = \a2|a4|a2|Out\(7) $ (\a2|a9|sub_1|Out[6]~13_cout\ $ (!\a2|a3|a2|Out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2|a4|a2|Out\(7),
	datad => \a2|a3|a2|Out\(7),
	cin => \a2|a9|sub_1|Out[6]~13_cout\,
	combout => \a2|a9|sub_1|Out[7]~14_combout\);

-- Location: LCCOMB_X46_Y35_N26
\a2|a3|a2|Out[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[0]~7_combout\ = (\a1|a0|Out\(1) & (((!\a2|a9|sub_1|Out[7]~14_combout\ & !\a1|a0|Out\(0))))) # (!\a1|a0|Out\(1) & (!\a1|a0|Out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|a0|Out\(2),
	datab => \a1|a0|Out\(1),
	datac => \a2|a9|sub_1|Out[7]~14_combout\,
	datad => \a1|a0|Out\(0),
	combout => \a2|a3|a2|Out[0]~7_combout\);

-- Location: LCCOMB_X44_Y35_N10
\a2|a3|a2|Out[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a2|a3|a2|Out[0]~8_combout\ = (\a2|a1|mux2_2|o1[0]~0_combout\ & (((\a2|a3|a2|Out\(0))))) # (!\a2|a1|mux2_2|o1[0]~0_combout\ & ((\a2|a3|a2|Out[0]~7_combout\ & (\a2|a3|a2|Out[0]~6_combout\)) # (!\a2|a3|a2|Out[0]~7_combout\ & ((\a2|a3|a2|Out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2|a3|a2|Out[0]~6_combout\,
	datab => \a2|a1|mux2_2|o1[0]~0_combout\,
	datac => \a2|a3|a2|Out\(0),
	datad => \a2|a3|a2|Out[0]~7_combout\,
	combout => \a2|a3|a2|Out[0]~8_combout\);

-- Location: LCFF_X44_Y35_N11
\a2|a3|a2|Out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \a2|a3|a2|Out[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a3|a2|Out\(0));

-- Location: LCCOMB_X40_Y35_N8
\a1|a1|Done\ : cycloneii_lcell_comb
-- Equation(s):
-- \a1|a1|Done~combout\ = (\a1|a0|Out\(1) & (\a1|a0|Out\(0) & \a1|a0|Out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a1|a0|Out\(1),
	datac => \a1|a0|Out\(0),
	datad => \a1|a0|Out\(2),
	combout => \a1|a1|Done~combout\);

-- Location: LCFF_X45_Y35_N7
\a2|a5|a2|Out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(4),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(3));

-- Location: LCFF_X45_Y35_N9
\a2|a5|a2|Out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(5),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(4));

-- Location: LCFF_X45_Y35_N11
\a2|a5|a2|Out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(6),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(5));

-- Location: LCFF_X45_Y35_N13
\a2|a5|a2|Out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \a2|a4|a2|Out\(7),
	sload => VCC,
	ena => \a1|a0|ALT_INV_Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a2|a5|a2|Out\(6));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[0]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(0),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[1]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(1),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(1));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[2]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(2),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[3]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(3),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[4]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(4),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[5]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(5),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(5));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[6]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(6),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(6));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Out_put[7]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(7),
	oe => \a1|a1|Done~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Out_put(7));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[0]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[1]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(1));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[2]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(2));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[3]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(3));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[4]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(4));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[5]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(5));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[6]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(6));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg1[7]~I\ : cycloneii_io
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
	datain => \a2|a3|a2|Out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg1(7));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[0]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[1]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(1));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[2]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(2));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[3]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[4]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(4));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[5]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(5));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[6]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(6));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg2[7]~I\ : cycloneii_io
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
	datain => \a2|a4|a2|Out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg2(7));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[0]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(0));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[1]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(1));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[2]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(2));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[3]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(3));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[4]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(4));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[5]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(5));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[6]~I\ : cycloneii_io
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
	datain => \a2|a5|a2|Out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_reg3(6));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_reg3[7]~I\ : cycloneii_io
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
	padio => ww_out_reg3(7));
END structure;


