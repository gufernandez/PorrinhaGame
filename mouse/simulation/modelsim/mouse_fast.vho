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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/14/2017 00:10:09"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mouse IS
    PORT (
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	mouse_buttons : OUT std_logic_vector(2 DOWNTO 0);
	wheel_action : OUT std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PS2_DAT : INOUT std_logic;
	PS2_CLK : INOUT std_logic
	);
END mouse;

-- Design Ports Information
-- PS2_DAT	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PS2_CLK	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_24[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mouse_buttons[0]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mouse_buttons[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mouse_buttons[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wheel_action[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wheel_action[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mouse IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mouse_buttons : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wheel_action : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \mousectrl|ps2io|parchecked~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mousectrl|ps2io|sigtrigger~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mousectrl|sigsend~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_24[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mousectrl|ps2io|Add0~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~1\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~3\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~4_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~5\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~6_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~7\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~8_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~9\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~10_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~11\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~12_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~13\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~14_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~4_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~8_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[2]~20_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[4]~24_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[9]~34_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2:count[3]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|parchecked~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[2]~4_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[6]~10_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count~14_combout\ : std_logic;
SIGNAL \mousectrl|sigsend~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|fcount[5]~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[4]~12_combout\ : std_logic;
SIGNAL \mousectrl|sigwheel~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigsendend~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~16_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~17_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~18_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~19_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~20_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~21_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~22_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add0~23_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~19_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~21_combout\ : std_logic;
SIGNAL \mousectrl|Selector0~0_combout\ : std_logic;
SIGNAL \mousectrl|Mux6~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal2~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[0]~55_combout\ : std_logic;
SIGNAL \mousectrl|Selector6~2_combout\ : std_logic;
SIGNAL \mousectrl|sigsend~clkctrl_outclk\ : std_logic;
SIGNAL \mousectrl|sigsend~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[7]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[0]~feeder_combout\ : std_logic;
SIGNAL \PS2_DAT~0\ : std_logic;
SIGNAL \PS2_CLK~0\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~23_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~1\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~22_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~3\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~5\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~6_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~20_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~7\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~9\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~10_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~18_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~11\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~12_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~17_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~13\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~14_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add1~16_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|rcount[5]~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigtrigger~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigtrigger~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigtrigger~clkctrl_outclk\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[0]~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[0]~15_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal5~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigsendend~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_clk~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[3]~22_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|LessThan4~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|LessThan4~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|LessThan4~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[11]~21_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[4]~24_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_clk~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[8]~32_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_clk~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_clk~4_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigclkreleased~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigsending~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigsending~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigclkreleased~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigsendend~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|process_2~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[0]~16\ : std_logic;
SIGNAL \mousectrl|ps2io|count[1]~17_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[1]~18\ : std_logic;
SIGNAL \mousectrl|ps2io|count[2]~19_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[2]~20\ : std_logic;
SIGNAL \mousectrl|ps2io|count[3]~23\ : std_logic;
SIGNAL \mousectrl|ps2io|count[4]~25\ : std_logic;
SIGNAL \mousectrl|ps2io|count[5]~26_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[5]~27\ : std_logic;
SIGNAL \mousectrl|ps2io|count[6]~28_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[6]~29\ : std_logic;
SIGNAL \mousectrl|ps2io|count[7]~30_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[7]~31\ : std_logic;
SIGNAL \mousectrl|ps2io|count[8]~33\ : std_logic;
SIGNAL \mousectrl|ps2io|count[9]~34_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[9]~35\ : std_logic;
SIGNAL \mousectrl|ps2io|count[10]~36_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count[10]~37\ : std_logic;
SIGNAL \mousectrl|ps2io|count[11]~38_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigclkheld~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigclkheld~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigclkheld~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sigsendend~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[0]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[2]~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[2]~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[2]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add6~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[3]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add6~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|TOPS2:count[1]~regout\ : std_logic;
SIGNAL \mousectrl|state~14_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|count~13_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2:count[0]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|Add3~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2:count[2]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|count~12_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2:count[1]~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[1]~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[1]~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[7]~8_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[7]~9_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[6]~11_combout\ : std_logic;
SIGNAL \mousectrl|Equal1~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[4]~13_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[2]~5_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[5]~14_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[5]~15_combout\ : std_logic;
SIGNAL \mousectrl|Equal1~0_combout\ : std_logic;
SIGNAL \mousectrl|Equal1~2_combout\ : std_logic;
SIGNAL \mousectrl|Equal2~0_combout\ : std_logic;
SIGNAL \mousectrl|state~15_combout\ : std_logic;
SIGNAL \mousectrl|Selector9~0_combout\ : std_logic;
SIGNAL \mousectrl|state.WAITACK~regout\ : std_logic;
SIGNAL \mousectrl|Selector10~0_combout\ : std_logic;
SIGNAL \mousectrl|state.NEXTCMD~regout\ : std_logic;
SIGNAL \mousectrl|Selector14~0_combout\ : std_logic;
SIGNAL \mousectrl|WideOr2~0_combout\ : std_logic;
SIGNAL \mousectrl|Selector13~0_combout\ : std_logic;
SIGNAL \mousectrl|Add0~0_combout\ : std_logic;
SIGNAL \mousectrl|Selector12~0_combout\ : std_logic;
SIGNAL \mousectrl|Selector15~0_combout\ : std_logic;
SIGNAL \mousectrl|Selector11~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|send_rdy~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[1]~18_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[6]~28_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal2~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[14]~44_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal2~4_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal2~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal2~5_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[18]~54_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[1]~19\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[2]~21\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[3]~22_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[3]~23\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[4]~25\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[5]~26_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[5]~27\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[6]~29\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[7]~30_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[7]~31\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[8]~32_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[8]~33\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[9]~35\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[10]~36_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[10]~37\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[11]~38_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[11]~39\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[12]~40_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[12]~41\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[13]~42_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[13]~43\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[14]~45\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[15]~46_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[15]~47\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[16]~49\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[17]~50_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[17]~51\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[18]~52_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|countclk[16]~48_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal2~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|send_rdy~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|send_rdy~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|send_rdy~_emulated_regout\ : std_logic;
SIGNAL \mousectrl|ps2io|send_rdy~2_combout\ : std_logic;
SIGNAL \mousectrl|Selector7~0_combout\ : std_logic;
SIGNAL \mousectrl|state.SETCMD~regout\ : std_logic;
SIGNAL \mousectrl|Selector8~0_combout\ : std_logic;
SIGNAL \mousectrl|state.SEND~regout\ : std_logic;
SIGNAL \mousectrl|state~16_combout\ : std_logic;
SIGNAL \mousectrl|Selector5~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[1]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~9_combout\ : std_logic;
SIGNAL \mousectrl|Mux4~0_combout\ : std_logic;
SIGNAL \mousectrl|Selector4~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[2]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|Mux3~0_combout\ : std_logic;
SIGNAL \mousectrl|Selector3~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[3]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~10_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~11_combout\ : std_logic;
SIGNAL \mousectrl|Selector2~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[4]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|Selector1~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|hdata[5]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~6_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~7_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal3~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~8_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Mux0~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Mux0~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~12_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~13_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~14_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~reg0_regout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|Equal5~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~en_emulated_regout\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_data~2_combout\ : std_logic;
SIGNAL \CLOCK_24[0]~clkctrl_outclk\ : std_logic;
SIGNAL \mousectrl|ps2io|ps2_clk~en_regout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[3]~6_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[3]~7_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2~3_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[0]~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|sdata[0]~1_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|FROMPS2~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|parchecked~0_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|parchecked~2_combout\ : std_logic;
SIGNAL \mousectrl|ps2io|parchecked~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|parchecked~clkctrl_outclk\ : std_logic;
SIGNAL \mousectrl|state.CLEAR~0_combout\ : std_logic;
SIGNAL \mousectrl|state.CLEAR~regout\ : std_logic;
SIGNAL \mousectrl|sigreseting~0_combout\ : std_logic;
SIGNAL \mousectrl|sigreseting~regout\ : std_logic;
SIGNAL \mousectrl|sigwheel~1_combout\ : std_logic;
SIGNAL \mousectrl|sigwheel~regout\ : std_logic;
SIGNAL \mousectrl|count~1_combout\ : std_logic;
SIGNAL \mousectrl|process_1:count[0]~regout\ : std_logic;
SIGNAL \mousectrl|bt_on[0]~0_combout\ : std_logic;
SIGNAL \mousectrl|bt_on[2]~feeder_combout\ : std_logic;
SIGNAL \mousectrl|count~0_combout\ : std_logic;
SIGNAL \mousectrl|process_1:count[1]~regout\ : std_logic;
SIGNAL \mousectrl|wheel[1]~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \mousectrl|oy~regout\ : std_logic;
SIGNAL \mousectrl|ox~feeder_combout\ : std_logic;
SIGNAL \mousectrl|ox~regout\ : std_logic;
SIGNAL \mousectrl|wheel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mousectrl|hdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mousectrl|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mousectrl|bt_on\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mousectrl|ps2io|sdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mousectrl|ps2io|rcount\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mousectrl|ps2io|hdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mousectrl|ps2io|fcount\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mousectrl|ps2io|countclk\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \mousectrl|ps2io|count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_24~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mousectrl|ALT_INV_sigreseting~regout\ : std_logic;
SIGNAL \mousectrl|ps2io|ALT_INV_ps2_clk~en_regout\ : std_logic;

BEGIN

ww_CLOCK_24 <= CLOCK_24;
ww_KEY <= KEY;
mouse_buttons <= ww_mouse_buttons;
wheel_action <= ww_wheel_action;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mousectrl|ps2io|parchecked~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mousectrl|ps2io|parchecked~regout\);

\mousectrl|ps2io|sigtrigger~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mousectrl|ps2io|sigtrigger~regout\);

\mousectrl|sigsend~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mousectrl|sigsend~regout\);

\CLOCK_24[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_24~combout\(0));
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\mousectrl|ALT_INV_sigreseting~regout\ <= NOT \mousectrl|sigreseting~regout\;
\mousectrl|ps2io|ALT_INV_ps2_clk~en_regout\ <= NOT \mousectrl|ps2io|ps2_clk~en_regout\;

-- Location: LCCOMB_X44_Y17_N12
\mousectrl|ps2io|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~0_combout\ = \mousectrl|ps2io|fcount\(0) $ (VCC)
-- \mousectrl|ps2io|Add0~1\ = CARRY(\mousectrl|ps2io|fcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|fcount\(0),
	datad => VCC,
	combout => \mousectrl|ps2io|Add0~0_combout\,
	cout => \mousectrl|ps2io|Add0~1\);

-- Location: LCCOMB_X44_Y17_N14
\mousectrl|ps2io|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~2_combout\ = (\mousectrl|ps2io|fcount\(1) & (!\mousectrl|ps2io|Add0~1\)) # (!\mousectrl|ps2io|fcount\(1) & ((\mousectrl|ps2io|Add0~1\) # (GND)))
-- \mousectrl|ps2io|Add0~3\ = CARRY((!\mousectrl|ps2io|Add0~1\) # (!\mousectrl|ps2io|fcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|fcount\(1),
	datad => VCC,
	cin => \mousectrl|ps2io|Add0~1\,
	combout => \mousectrl|ps2io|Add0~2_combout\,
	cout => \mousectrl|ps2io|Add0~3\);

-- Location: LCCOMB_X44_Y17_N16
\mousectrl|ps2io|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~4_combout\ = (\mousectrl|ps2io|fcount\(2) & (\mousectrl|ps2io|Add0~3\ $ (GND))) # (!\mousectrl|ps2io|fcount\(2) & (!\mousectrl|ps2io|Add0~3\ & VCC))
-- \mousectrl|ps2io|Add0~5\ = CARRY((\mousectrl|ps2io|fcount\(2) & !\mousectrl|ps2io|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|fcount\(2),
	datad => VCC,
	cin => \mousectrl|ps2io|Add0~3\,
	combout => \mousectrl|ps2io|Add0~4_combout\,
	cout => \mousectrl|ps2io|Add0~5\);

-- Location: LCCOMB_X44_Y17_N18
\mousectrl|ps2io|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~6_combout\ = (\mousectrl|ps2io|fcount\(3) & (!\mousectrl|ps2io|Add0~5\)) # (!\mousectrl|ps2io|fcount\(3) & ((\mousectrl|ps2io|Add0~5\) # (GND)))
-- \mousectrl|ps2io|Add0~7\ = CARRY((!\mousectrl|ps2io|Add0~5\) # (!\mousectrl|ps2io|fcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|fcount\(3),
	datad => VCC,
	cin => \mousectrl|ps2io|Add0~5\,
	combout => \mousectrl|ps2io|Add0~6_combout\,
	cout => \mousectrl|ps2io|Add0~7\);

-- Location: LCCOMB_X44_Y17_N20
\mousectrl|ps2io|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~8_combout\ = (\mousectrl|ps2io|fcount\(4) & (\mousectrl|ps2io|Add0~7\ $ (GND))) # (!\mousectrl|ps2io|fcount\(4) & (!\mousectrl|ps2io|Add0~7\ & VCC))
-- \mousectrl|ps2io|Add0~9\ = CARRY((\mousectrl|ps2io|fcount\(4) & !\mousectrl|ps2io|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|fcount\(4),
	datad => VCC,
	cin => \mousectrl|ps2io|Add0~7\,
	combout => \mousectrl|ps2io|Add0~8_combout\,
	cout => \mousectrl|ps2io|Add0~9\);

-- Location: LCCOMB_X44_Y17_N22
\mousectrl|ps2io|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~10_combout\ = (\mousectrl|ps2io|fcount\(5) & (!\mousectrl|ps2io|Add0~9\)) # (!\mousectrl|ps2io|fcount\(5) & ((\mousectrl|ps2io|Add0~9\) # (GND)))
-- \mousectrl|ps2io|Add0~11\ = CARRY((!\mousectrl|ps2io|Add0~9\) # (!\mousectrl|ps2io|fcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|fcount\(5),
	datad => VCC,
	cin => \mousectrl|ps2io|Add0~9\,
	combout => \mousectrl|ps2io|Add0~10_combout\,
	cout => \mousectrl|ps2io|Add0~11\);

-- Location: LCCOMB_X44_Y17_N24
\mousectrl|ps2io|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~12_combout\ = (\mousectrl|ps2io|fcount\(6) & (\mousectrl|ps2io|Add0~11\ $ (GND))) # (!\mousectrl|ps2io|fcount\(6) & (!\mousectrl|ps2io|Add0~11\ & VCC))
-- \mousectrl|ps2io|Add0~13\ = CARRY((\mousectrl|ps2io|fcount\(6) & !\mousectrl|ps2io|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|fcount\(6),
	datad => VCC,
	cin => \mousectrl|ps2io|Add0~11\,
	combout => \mousectrl|ps2io|Add0~12_combout\,
	cout => \mousectrl|ps2io|Add0~13\);

-- Location: LCCOMB_X44_Y17_N26
\mousectrl|ps2io|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~14_combout\ = \mousectrl|ps2io|Add0~13\ $ (\mousectrl|ps2io|fcount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|ps2io|fcount\(7),
	cin => \mousectrl|ps2io|Add0~13\,
	combout => \mousectrl|ps2io|Add0~14_combout\);

-- Location: LCCOMB_X42_Y17_N18
\mousectrl|ps2io|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~4_combout\ = (\mousectrl|ps2io|rcount\(2) & (\mousectrl|ps2io|Add1~3\ $ (GND))) # (!\mousectrl|ps2io|rcount\(2) & (!\mousectrl|ps2io|Add1~3\ & VCC))
-- \mousectrl|ps2io|Add1~5\ = CARRY((\mousectrl|ps2io|rcount\(2) & !\mousectrl|ps2io|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|rcount\(2),
	datad => VCC,
	cin => \mousectrl|ps2io|Add1~3\,
	combout => \mousectrl|ps2io|Add1~4_combout\,
	cout => \mousectrl|ps2io|Add1~5\);

-- Location: LCCOMB_X42_Y17_N22
\mousectrl|ps2io|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~8_combout\ = (\mousectrl|ps2io|rcount\(4) & (\mousectrl|ps2io|Add1~7\ $ (GND))) # (!\mousectrl|ps2io|rcount\(4) & (!\mousectrl|ps2io|Add1~7\ & VCC))
-- \mousectrl|ps2io|Add1~9\ = CARRY((\mousectrl|ps2io|rcount\(4) & !\mousectrl|ps2io|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|rcount\(4),
	datad => VCC,
	cin => \mousectrl|ps2io|Add1~7\,
	combout => \mousectrl|ps2io|Add1~8_combout\,
	cout => \mousectrl|ps2io|Add1~9\);

-- Location: LCFF_X33_Y16_N17
\mousectrl|ps2io|countclk[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[2]~20_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(2));

-- Location: LCFF_X33_Y16_N21
\mousectrl|ps2io|countclk[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[4]~24_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(4));

-- Location: LCFF_X33_Y16_N31
\mousectrl|ps2io|countclk[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[9]~34_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(9));

-- Location: LCCOMB_X33_Y16_N16
\mousectrl|ps2io|countclk[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[2]~20_combout\ = (\mousectrl|ps2io|countclk\(2) & (!\mousectrl|ps2io|countclk[1]~19\)) # (!\mousectrl|ps2io|countclk\(2) & ((\mousectrl|ps2io|countclk[1]~19\) # (GND)))
-- \mousectrl|ps2io|countclk[2]~21\ = CARRY((!\mousectrl|ps2io|countclk[1]~19\) # (!\mousectrl|ps2io|countclk\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(2),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[1]~19\,
	combout => \mousectrl|ps2io|countclk[2]~20_combout\,
	cout => \mousectrl|ps2io|countclk[2]~21\);

-- Location: LCCOMB_X33_Y16_N20
\mousectrl|ps2io|countclk[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[4]~24_combout\ = (\mousectrl|ps2io|countclk\(4) & (!\mousectrl|ps2io|countclk[3]~23\)) # (!\mousectrl|ps2io|countclk\(4) & ((\mousectrl|ps2io|countclk[3]~23\) # (GND)))
-- \mousectrl|ps2io|countclk[4]~25\ = CARRY((!\mousectrl|ps2io|countclk[3]~23\) # (!\mousectrl|ps2io|countclk\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(4),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[3]~23\,
	combout => \mousectrl|ps2io|countclk[4]~24_combout\,
	cout => \mousectrl|ps2io|countclk[4]~25\);

-- Location: LCCOMB_X33_Y16_N30
\mousectrl|ps2io|countclk[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[9]~34_combout\ = (\mousectrl|ps2io|countclk\(9) & (\mousectrl|ps2io|countclk[8]~33\ $ (GND))) # (!\mousectrl|ps2io|countclk\(9) & (!\mousectrl|ps2io|countclk[8]~33\ & VCC))
-- \mousectrl|ps2io|countclk[9]~35\ = CARRY((\mousectrl|ps2io|countclk\(9) & !\mousectrl|ps2io|countclk[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(9),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[8]~33\,
	combout => \mousectrl|ps2io|countclk[9]~34_combout\,
	cout => \mousectrl|ps2io|countclk[9]~35\);

-- Location: LCFF_X34_Y15_N25
\mousectrl|ps2io|FROMPS2:count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count~14_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|FROMPS2:count[3]~regout\);

-- Location: LCCOMB_X34_Y15_N12
\mousectrl|ps2io|parchecked~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|parchecked~1_combout\ = (\mousectrl|ps2io|FROMPS2:count[3]~regout\ & (!\mousectrl|ps2io|FROMPS2:count[2]~regout\ & (\mousectrl|ps2io|FROMPS2:count[1]~regout\ $ (\mousectrl|ps2io|FROMPS2:count[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[3]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|parchecked~1_combout\);

-- Location: LCCOMB_X35_Y15_N24
\mousectrl|ps2io|sdata[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[2]~4_combout\ = (\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (!\mousectrl|ps2io|sigsending~regout\ & (!\mousectrl|ps2io|FROMPS2:count[2]~regout\ & \mousectrl|ps2io|FROMPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|sigsending~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|sdata[2]~4_combout\);

-- Location: LCCOMB_X35_Y15_N16
\mousectrl|ps2io|sdata[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[6]~10_combout\ = (\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (!\mousectrl|ps2io|sigsending~regout\ & (\mousectrl|ps2io|FROMPS2:count[2]~regout\ & \mousectrl|ps2io|FROMPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|sigsending~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|sdata[6]~10_combout\);

-- Location: LCCOMB_X34_Y15_N24
\mousectrl|ps2io|count~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count~14_combout\ = (\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (\mousectrl|ps2io|FROMPS2:count[3]~regout\ $ (((\mousectrl|ps2io|FROMPS2:count[2]~regout\ & \mousectrl|ps2io|FROMPS2:count[1]~regout\))))) # 
-- (!\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (\mousectrl|ps2io|FROMPS2:count[3]~regout\ & ((\mousectrl|ps2io|FROMPS2:count[2]~regout\) # (!\mousectrl|ps2io|FROMPS2:count[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[3]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|count~14_combout\);

-- Location: LCFF_X1_Y13_N29
\mousectrl|sigsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|sigsend~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|sigsend~regout\);

-- Location: LCFF_X44_Y17_N29
\mousectrl|ps2io|fcount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(7));

-- Location: LCFF_X44_Y17_N31
\mousectrl|ps2io|fcount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(6));

-- Location: LCFF_X44_Y17_N1
\mousectrl|ps2io|fcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(5));

-- Location: LCCOMB_X45_Y17_N12
\mousectrl|ps2io|fcount[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|fcount[5]~0_combout\ = (\PS2_CLK~0\) # (((!\mousectrl|ps2io|fcount\(6) & !\mousectrl|ps2io|fcount\(5))) # (!\mousectrl|ps2io|fcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|fcount\(6),
	datab => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|fcount\(5),
	datad => \mousectrl|ps2io|fcount\(7),
	combout => \mousectrl|ps2io|fcount[5]~0_combout\);

-- Location: LCCOMB_X35_Y15_N12
\mousectrl|ps2io|sdata[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[4]~12_combout\ = (!\mousectrl|ps2io|FROMPS2:count[1]~regout\ & (\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (\mousectrl|ps2io|FROMPS2:count[2]~regout\ & !\mousectrl|ps2io|sigsending~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|sigsending~regout\,
	combout => \mousectrl|ps2io|sdata[4]~12_combout\);

-- Location: LCCOMB_X37_Y15_N10
\mousectrl|sigwheel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|sigwheel~0_combout\ = (\mousectrl|state.WAITACK~regout\ & (\mousectrl|ps2io|parchecked~regout\ & \mousectrl|state~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|state.WAITACK~regout\,
	datac => \mousectrl|ps2io|parchecked~regout\,
	datad => \mousectrl|state~14_combout\,
	combout => \mousectrl|sigwheel~0_combout\);

-- Location: LCFF_X38_Y16_N21
\mousectrl|ps2io|hdata[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[7]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(7));

-- Location: LCFF_X38_Y16_N7
\mousectrl|ps2io|hdata[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[0]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(0));

-- Location: LCCOMB_X36_Y16_N24
\mousectrl|ps2io|sigsendend~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigsendend~0_combout\ = (\mousectrl|ps2io|TOPS2:count[3]~regout\ & ((\mousectrl|ps2io|TOPS2:count[2]~regout\) # (\mousectrl|ps2io|TOPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	combout => \mousectrl|ps2io|sigsendend~0_combout\);

-- Location: LCFF_X44_Y17_N7
\mousectrl|ps2io|fcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(4));

-- Location: LCFF_X44_Y17_N5
\mousectrl|ps2io|fcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(3));

-- Location: LCFF_X44_Y17_N11
\mousectrl|ps2io|fcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~21_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(2));

-- Location: LCFF_X44_Y17_N9
\mousectrl|ps2io|fcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(1));

-- Location: LCFF_X44_Y17_N3
\mousectrl|ps2io|fcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add0~23_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|fcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|fcount\(0));

-- Location: LCCOMB_X44_Y17_N28
\mousectrl|ps2io|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~16_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add0~14_combout\,
	combout => \mousectrl|ps2io|Add0~16_combout\);

-- Location: LCCOMB_X44_Y17_N30
\mousectrl|ps2io|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~17_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add0~12_combout\,
	combout => \mousectrl|ps2io|Add0~17_combout\);

-- Location: LCCOMB_X44_Y17_N0
\mousectrl|ps2io|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~18_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add0~10_combout\,
	combout => \mousectrl|ps2io|Add0~18_combout\);

-- Location: LCFF_X42_Y17_N7
\mousectrl|ps2io|rcount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(4));

-- Location: LCFF_X42_Y17_N11
\mousectrl|ps2io|rcount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~21_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(2));

-- Location: LCFF_X37_Y16_N27
\mousectrl|hdata[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(7));

-- Location: LCFF_X37_Y16_N15
\mousectrl|hdata[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(0));

-- Location: LCCOMB_X44_Y17_N6
\mousectrl|ps2io|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~19_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add0~8_combout\,
	combout => \mousectrl|ps2io|Add0~19_combout\);

-- Location: LCCOMB_X44_Y17_N4
\mousectrl|ps2io|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~20_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add0~6_combout\,
	combout => \mousectrl|ps2io|Add0~20_combout\);

-- Location: LCCOMB_X44_Y17_N10
\mousectrl|ps2io|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~21_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add0~4_combout\,
	combout => \mousectrl|ps2io|Add0~21_combout\);

-- Location: LCCOMB_X44_Y17_N8
\mousectrl|ps2io|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~22_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add0~2_combout\,
	combout => \mousectrl|ps2io|Add0~22_combout\);

-- Location: LCCOMB_X44_Y17_N2
\mousectrl|ps2io|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add0~23_combout\ = (!\PS2_CLK~0\ & \mousectrl|ps2io|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add0~0_combout\,
	combout => \mousectrl|ps2io|Add0~23_combout\);

-- Location: LCCOMB_X42_Y17_N6
\mousectrl|ps2io|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~19_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add1~8_combout\,
	combout => \mousectrl|ps2io|Add1~19_combout\);

-- Location: LCCOMB_X42_Y17_N10
\mousectrl|ps2io|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~21_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add1~4_combout\,
	combout => \mousectrl|ps2io|Add1~21_combout\);

-- Location: LCCOMB_X37_Y16_N26
\mousectrl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector0~0_combout\ = (\mousectrl|state.SETCMD~regout\ & (\mousectrl|state.SEND~regout\ & ((!\mousectrl|count\(0)) # (!\mousectrl|count\(2))))) # (!\mousectrl|state.SETCMD~regout\ & (((!\mousectrl|count\(0))) # (!\mousectrl|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|state.SETCMD~regout\,
	datab => \mousectrl|count\(2),
	datac => \mousectrl|count\(0),
	datad => \mousectrl|state.SEND~regout\,
	combout => \mousectrl|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y16_N28
\mousectrl|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Mux6~0_combout\ = (\mousectrl|count\(3)) # ((\mousectrl|count\(0) & ((\mousectrl|count\(2)) # (\mousectrl|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(2),
	datab => \mousectrl|count\(3),
	datac => \mousectrl|count\(0),
	datad => \mousectrl|count\(1),
	combout => \mousectrl|Mux6~0_combout\);

-- Location: LCFF_X33_Y16_N11
\mousectrl|ps2io|countclk[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[0]~55_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(0));

-- Location: LCCOMB_X33_Y16_N4
\mousectrl|ps2io|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal2~1_combout\ = (!\mousectrl|ps2io|countclk\(0) & (!\mousectrl|ps2io|countclk\(1) & (!\mousectrl|ps2io|countclk\(2) & !\mousectrl|ps2io|countclk\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(0),
	datab => \mousectrl|ps2io|countclk\(1),
	datac => \mousectrl|ps2io|countclk\(2),
	datad => \mousectrl|ps2io|countclk\(3),
	combout => \mousectrl|ps2io|Equal2~1_combout\);

-- Location: LCCOMB_X33_Y16_N10
\mousectrl|ps2io|countclk[0]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[0]~55_combout\ = \mousectrl|ps2io|countclk\(0) $ (((!\mousectrl|ps2io|sigsending~regout\ & ((!\mousectrl|ps2io|Equal2~5_combout\) # (!\mousectrl|ps2io|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sigsending~regout\,
	datab => \mousectrl|ps2io|Equal2~0_combout\,
	datac => \mousectrl|ps2io|countclk\(0),
	datad => \mousectrl|ps2io|Equal2~5_combout\,
	combout => \mousectrl|ps2io|countclk[0]~55_combout\);

-- Location: LCCOMB_X37_Y16_N14
\mousectrl|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector6~2_combout\ = (!\mousectrl|Mux6~0_combout\ & ((\mousectrl|state.SEND~regout\) # (!\mousectrl|state.SETCMD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|state.SETCMD~regout\,
	datac => \mousectrl|state.SEND~regout\,
	datad => \mousectrl|Mux6~0_combout\,
	combout => \mousectrl|Selector6~2_combout\);

-- Location: CLKCTRL_G2
\mousectrl|sigsend~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mousectrl|sigsend~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mousectrl|sigsend~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y13_N28
\mousectrl|sigsend~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|sigsend~feeder_combout\ = \mousectrl|state.SEND~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|state.SEND~regout\,
	combout => \mousectrl|sigsend~feeder_combout\);

-- Location: LCCOMB_X38_Y16_N20
\mousectrl|ps2io|hdata[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[7]~feeder_combout\ = \mousectrl|hdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(7),
	combout => \mousectrl|ps2io|hdata[7]~feeder_combout\);

-- Location: LCCOMB_X38_Y16_N6
\mousectrl|ps2io|hdata[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[0]~feeder_combout\ = \mousectrl|hdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(0),
	combout => \mousectrl|ps2io|hdata[0]~feeder_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PS2_DAT~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mousectrl|ps2io|ps2_data~reg0_regout\,
	oe => \mousectrl|ps2io|ps2_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PS2_DAT,
	combout => \PS2_DAT~0\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PS2_CLK~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mousectrl|ps2io|ALT_INV_ps2_clk~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => PS2_CLK,
	combout => \PS2_CLK~0\);

-- Location: LCCOMB_X42_Y17_N14
\mousectrl|ps2io|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~0_combout\ = \mousectrl|ps2io|rcount\(0) $ (VCC)
-- \mousectrl|ps2io|Add1~1\ = CARRY(\mousectrl|ps2io|rcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|rcount\(0),
	datad => VCC,
	combout => \mousectrl|ps2io|Add1~0_combout\,
	cout => \mousectrl|ps2io|Add1~1\);

-- Location: LCCOMB_X42_Y17_N2
\mousectrl|ps2io|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~23_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add1~0_combout\,
	combout => \mousectrl|ps2io|Add1~23_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X42_Y17_N3
\mousectrl|ps2io|rcount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~23_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(0));

-- Location: LCCOMB_X42_Y17_N16
\mousectrl|ps2io|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~2_combout\ = (\mousectrl|ps2io|rcount\(1) & (!\mousectrl|ps2io|Add1~1\)) # (!\mousectrl|ps2io|rcount\(1) & ((\mousectrl|ps2io|Add1~1\) # (GND)))
-- \mousectrl|ps2io|Add1~3\ = CARRY((!\mousectrl|ps2io|Add1~1\) # (!\mousectrl|ps2io|rcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|rcount\(1),
	datad => VCC,
	cin => \mousectrl|ps2io|Add1~1\,
	combout => \mousectrl|ps2io|Add1~2_combout\,
	cout => \mousectrl|ps2io|Add1~3\);

-- Location: LCCOMB_X42_Y17_N8
\mousectrl|ps2io|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~22_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add1~2_combout\,
	combout => \mousectrl|ps2io|Add1~22_combout\);

-- Location: LCFF_X42_Y17_N9
\mousectrl|ps2io|rcount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~22_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(1));

-- Location: LCCOMB_X42_Y17_N20
\mousectrl|ps2io|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~6_combout\ = (\mousectrl|ps2io|rcount\(3) & (!\mousectrl|ps2io|Add1~5\)) # (!\mousectrl|ps2io|rcount\(3) & ((\mousectrl|ps2io|Add1~5\) # (GND)))
-- \mousectrl|ps2io|Add1~7\ = CARRY((!\mousectrl|ps2io|Add1~5\) # (!\mousectrl|ps2io|rcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|rcount\(3),
	datad => VCC,
	cin => \mousectrl|ps2io|Add1~5\,
	combout => \mousectrl|ps2io|Add1~6_combout\,
	cout => \mousectrl|ps2io|Add1~7\);

-- Location: LCCOMB_X42_Y17_N4
\mousectrl|ps2io|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~20_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add1~6_combout\,
	combout => \mousectrl|ps2io|Add1~20_combout\);

-- Location: LCFF_X42_Y17_N5
\mousectrl|ps2io|rcount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~20_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(3));

-- Location: LCCOMB_X42_Y17_N24
\mousectrl|ps2io|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~10_combout\ = (\mousectrl|ps2io|rcount\(5) & (!\mousectrl|ps2io|Add1~9\)) # (!\mousectrl|ps2io|rcount\(5) & ((\mousectrl|ps2io|Add1~9\) # (GND)))
-- \mousectrl|ps2io|Add1~11\ = CARRY((!\mousectrl|ps2io|Add1~9\) # (!\mousectrl|ps2io|rcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|rcount\(5),
	datad => VCC,
	cin => \mousectrl|ps2io|Add1~9\,
	combout => \mousectrl|ps2io|Add1~10_combout\,
	cout => \mousectrl|ps2io|Add1~11\);

-- Location: LCCOMB_X42_Y17_N0
\mousectrl|ps2io|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~18_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|Add1~10_combout\,
	combout => \mousectrl|ps2io|Add1~18_combout\);

-- Location: LCFF_X42_Y17_N1
\mousectrl|ps2io|rcount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~18_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(5));

-- Location: LCCOMB_X42_Y17_N26
\mousectrl|ps2io|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~12_combout\ = (\mousectrl|ps2io|rcount\(6) & (\mousectrl|ps2io|Add1~11\ $ (GND))) # (!\mousectrl|ps2io|rcount\(6) & (!\mousectrl|ps2io|Add1~11\ & VCC))
-- \mousectrl|ps2io|Add1~13\ = CARRY((\mousectrl|ps2io|rcount\(6) & !\mousectrl|ps2io|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|rcount\(6),
	datad => VCC,
	cin => \mousectrl|ps2io|Add1~11\,
	combout => \mousectrl|ps2io|Add1~12_combout\,
	cout => \mousectrl|ps2io|Add1~13\);

-- Location: LCCOMB_X42_Y17_N30
\mousectrl|ps2io|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~17_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add1~12_combout\,
	combout => \mousectrl|ps2io|Add1~17_combout\);

-- Location: LCFF_X42_Y17_N31
\mousectrl|ps2io|rcount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(6));

-- Location: LCCOMB_X42_Y17_N28
\mousectrl|ps2io|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~14_combout\ = \mousectrl|ps2io|Add1~13\ $ (\mousectrl|ps2io|rcount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|ps2io|rcount\(7),
	cin => \mousectrl|ps2io|Add1~13\,
	combout => \mousectrl|ps2io|Add1~14_combout\);

-- Location: LCCOMB_X42_Y17_N12
\mousectrl|ps2io|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add1~16_combout\ = (\PS2_CLK~0\ & \mousectrl|ps2io|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_CLK~0\,
	datad => \mousectrl|ps2io|Add1~14_combout\,
	combout => \mousectrl|ps2io|Add1~16_combout\);

-- Location: LCFF_X42_Y17_N13
\mousectrl|ps2io|rcount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add1~16_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ps2io|rcount[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|rcount\(7));

-- Location: LCCOMB_X43_Y17_N16
\mousectrl|ps2io|rcount[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|rcount[5]~0_combout\ = (((!\mousectrl|ps2io|rcount\(5) & !\mousectrl|ps2io|rcount\(6))) # (!\mousectrl|ps2io|rcount\(7))) # (!\PS2_CLK~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|rcount\(5),
	datab => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|rcount\(6),
	datad => \mousectrl|ps2io|rcount\(7),
	combout => \mousectrl|ps2io|rcount[5]~0_combout\);

-- Location: LCCOMB_X49_Y17_N12
\mousectrl|ps2io|sigtrigger~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigtrigger~0_combout\ = (\mousectrl|ps2io|fcount[5]~0_combout\ & (((\mousectrl|ps2io|sigtrigger~regout\ & \mousectrl|ps2io|rcount[5]~0_combout\)))) # (!\mousectrl|ps2io|fcount[5]~0_combout\ & (!\PS2_CLK~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|fcount[5]~0_combout\,
	datab => \PS2_CLK~0\,
	datac => \mousectrl|ps2io|sigtrigger~regout\,
	datad => \mousectrl|ps2io|rcount[5]~0_combout\,
	combout => \mousectrl|ps2io|sigtrigger~0_combout\);

-- Location: LCFF_X49_Y17_N13
\mousectrl|ps2io|sigtrigger\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sigtrigger~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sigtrigger~regout\);

-- Location: CLKCTRL_G7
\mousectrl|ps2io|sigtrigger~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mousectrl|ps2io|sigtrigger~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y16_N14
\mousectrl|ps2io|TOPS2:count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|TOPS2:count[0]~0_combout\ = !\mousectrl|ps2io|TOPS2:count[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|TOPS2:count[0]~0_combout\);

-- Location: LCCOMB_X34_Y16_N4
\mousectrl|ps2io|count[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[0]~15_combout\ = \mousectrl|ps2io|count\(0) $ (VCC)
-- \mousectrl|ps2io|count[0]~16\ = CARRY(\mousectrl|ps2io|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(0),
	datad => VCC,
	combout => \mousectrl|ps2io|count[0]~15_combout\,
	cout => \mousectrl|ps2io|count[0]~16\);

-- Location: LCCOMB_X36_Y16_N10
\mousectrl|ps2io|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal5~1_combout\ = (\mousectrl|ps2io|TOPS2:count[1]~regout\ & (!\mousectrl|ps2io|TOPS2:count[2]~regout\ & (\mousectrl|ps2io|TOPS2:count[3]~regout\ & !\mousectrl|ps2io|TOPS2:count[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|Equal5~1_combout\);

-- Location: LCCOMB_X36_Y16_N0
\mousectrl|ps2io|sigsendend~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigsendend~1_combout\ = (\mousectrl|ps2io|Equal5~1_combout\) # ((\mousectrl|ps2io|sigsendend~0_combout\ & \mousectrl|ps2io|sigsendend~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sigsendend~0_combout\,
	datac => \mousectrl|ps2io|sigsendend~regout\,
	datad => \mousectrl|ps2io|Equal5~1_combout\,
	combout => \mousectrl|ps2io|sigsendend~1_combout\);

-- Location: LCCOMB_X35_Y16_N26
\mousectrl|ps2io|ps2_clk~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_clk~3_combout\ = (!\mousectrl|ps2io|count\(9) & !\mousectrl|ps2io|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(9),
	datad => \mousectrl|ps2io|count\(10),
	combout => \mousectrl|ps2io|ps2_clk~3_combout\);

-- Location: LCCOMB_X34_Y16_N10
\mousectrl|ps2io|count[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[3]~22_combout\ = (\mousectrl|ps2io|count\(3) & (!\mousectrl|ps2io|count[2]~20\)) # (!\mousectrl|ps2io|count\(3) & ((\mousectrl|ps2io|count[2]~20\) # (GND)))
-- \mousectrl|ps2io|count[3]~23\ = CARRY((!\mousectrl|ps2io|count[2]~20\) # (!\mousectrl|ps2io|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(3),
	datad => VCC,
	cin => \mousectrl|ps2io|count[2]~20\,
	combout => \mousectrl|ps2io|count[3]~22_combout\,
	cout => \mousectrl|ps2io|count[3]~23\);

-- Location: LCCOMB_X34_Y16_N0
\mousectrl|ps2io|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|LessThan4~0_combout\ = (\mousectrl|ps2io|count\(1)) # ((\mousectrl|ps2io|count\(2)) # (\mousectrl|ps2io|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(1),
	datac => \mousectrl|ps2io|count\(2),
	datad => \mousectrl|ps2io|count\(3),
	combout => \mousectrl|ps2io|LessThan4~0_combout\);

-- Location: LCCOMB_X34_Y16_N30
\mousectrl|ps2io|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|LessThan4~1_combout\ = (\mousectrl|ps2io|count\(6)) # ((\mousectrl|ps2io|count\(4) & \mousectrl|ps2io|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(4),
	datac => \mousectrl|ps2io|count\(6),
	datad => \mousectrl|ps2io|LessThan4~0_combout\,
	combout => \mousectrl|ps2io|LessThan4~1_combout\);

-- Location: LCCOMB_X34_Y16_N28
\mousectrl|ps2io|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|LessThan4~2_combout\ = (((!\mousectrl|ps2io|count\(5) & !\mousectrl|ps2io|LessThan4~1_combout\)) # (!\mousectrl|ps2io|count\(7))) # (!\mousectrl|ps2io|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(8),
	datab => \mousectrl|ps2io|count\(7),
	datac => \mousectrl|ps2io|count\(5),
	datad => \mousectrl|ps2io|LessThan4~1_combout\,
	combout => \mousectrl|ps2io|LessThan4~2_combout\);

-- Location: LCCOMB_X34_Y16_N2
\mousectrl|ps2io|count[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[11]~21_combout\ = (\mousectrl|ps2io|sigsending~regout\ & ((\mousectrl|ps2io|ps2_clk~4_combout\) # ((\mousectrl|ps2io|LessThan4~2_combout\ & \mousectrl|ps2io|ps2_clk~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sigsending~regout\,
	datab => \mousectrl|ps2io|LessThan4~2_combout\,
	datac => \mousectrl|ps2io|ps2_clk~3_combout\,
	datad => \mousectrl|ps2io|ps2_clk~4_combout\,
	combout => \mousectrl|ps2io|count[11]~21_combout\);

-- Location: LCFF_X34_Y16_N11
\mousectrl|ps2io|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[3]~22_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(3));

-- Location: LCCOMB_X34_Y16_N12
\mousectrl|ps2io|count[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[4]~24_combout\ = (\mousectrl|ps2io|count\(4) & (\mousectrl|ps2io|count[3]~23\ $ (GND))) # (!\mousectrl|ps2io|count\(4) & (!\mousectrl|ps2io|count[3]~23\ & VCC))
-- \mousectrl|ps2io|count[4]~25\ = CARRY((\mousectrl|ps2io|count\(4) & !\mousectrl|ps2io|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(4),
	datad => VCC,
	cin => \mousectrl|ps2io|count[3]~23\,
	combout => \mousectrl|ps2io|count[4]~24_combout\,
	cout => \mousectrl|ps2io|count[4]~25\);

-- Location: LCFF_X34_Y16_N13
\mousectrl|ps2io|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[4]~24_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(4));

-- Location: LCCOMB_X35_Y16_N14
\mousectrl|ps2io|ps2_clk~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_clk~1_combout\ = (!\mousectrl|ps2io|count\(2) & (!\mousectrl|ps2io|count\(5) & (!\mousectrl|ps2io|count\(3) & !\mousectrl|ps2io|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(2),
	datab => \mousectrl|ps2io|count\(5),
	datac => \mousectrl|ps2io|count\(3),
	datad => \mousectrl|ps2io|count\(4),
	combout => \mousectrl|ps2io|ps2_clk~1_combout\);

-- Location: LCCOMB_X34_Y16_N20
\mousectrl|ps2io|count[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[8]~32_combout\ = (\mousectrl|ps2io|count\(8) & (\mousectrl|ps2io|count[7]~31\ $ (GND))) # (!\mousectrl|ps2io|count\(8) & (!\mousectrl|ps2io|count[7]~31\ & VCC))
-- \mousectrl|ps2io|count[8]~33\ = CARRY((\mousectrl|ps2io|count\(8) & !\mousectrl|ps2io|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(8),
	datad => VCC,
	cin => \mousectrl|ps2io|count[7]~31\,
	combout => \mousectrl|ps2io|count[8]~32_combout\,
	cout => \mousectrl|ps2io|count[8]~33\);

-- Location: LCFF_X34_Y16_N21
\mousectrl|ps2io|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[8]~32_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(8));

-- Location: LCCOMB_X35_Y16_N28
\mousectrl|ps2io|ps2_clk~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_clk~2_combout\ = ((!\mousectrl|ps2io|count\(6)) # (!\mousectrl|ps2io|count\(8))) # (!\mousectrl|ps2io|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(7),
	datac => \mousectrl|ps2io|count\(8),
	datad => \mousectrl|ps2io|count\(6),
	combout => \mousectrl|ps2io|ps2_clk~2_combout\);

-- Location: LCCOMB_X35_Y16_N4
\mousectrl|ps2io|ps2_clk~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_clk~4_combout\ = ((\mousectrl|ps2io|ps2_clk~3_combout\ & ((\mousectrl|ps2io|ps2_clk~1_combout\) # (\mousectrl|ps2io|ps2_clk~2_combout\)))) # (!\mousectrl|ps2io|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(11),
	datab => \mousectrl|ps2io|ps2_clk~3_combout\,
	datac => \mousectrl|ps2io|ps2_clk~1_combout\,
	datad => \mousectrl|ps2io|ps2_clk~2_combout\,
	combout => \mousectrl|ps2io|ps2_clk~4_combout\);

-- Location: LCCOMB_X35_Y16_N0
\mousectrl|ps2io|sigclkreleased~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigclkreleased~2_combout\ = (\mousectrl|ps2io|ps2_clk~4_combout\) # ((!\mousectrl|ps2io|count\(9) & (!\mousectrl|ps2io|count\(10) & \mousectrl|ps2io|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(9),
	datab => \mousectrl|ps2io|count\(10),
	datac => \mousectrl|ps2io|ps2_clk~4_combout\,
	datad => \mousectrl|ps2io|LessThan4~2_combout\,
	combout => \mousectrl|ps2io|sigclkreleased~2_combout\);

-- Location: LCCOMB_X35_Y16_N12
\mousectrl|ps2io|sigsending~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigsending~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mousectrl|ps2io|sigsending~feeder_combout\);

-- Location: LCFF_X35_Y16_N13
\mousectrl|ps2io|sigsending\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sigsending~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sigsending~regout\);

-- Location: LCFF_X35_Y16_N1
\mousectrl|ps2io|sigclkreleased\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sigclkreleased~2_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|sigsending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sigclkreleased~regout\);

-- Location: LCCOMB_X36_Y16_N16
\mousectrl|ps2io|TOPS2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|TOPS2~1_combout\ = (!\mousectrl|ps2io|sigclkreleased~regout\ & \mousectrl|ps2io|sigsending~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|ps2io|sigclkreleased~regout\,
	datad => \mousectrl|ps2io|sigsending~regout\,
	combout => \mousectrl|ps2io|TOPS2~1_combout\);

-- Location: LCFF_X36_Y16_N1
\mousectrl|ps2io|sigsendend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sigsendend~1_combout\,
	aclr => \mousectrl|ps2io|sigsendend~2_combout\,
	ena => \mousectrl|ps2io|TOPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sigsendend~regout\);

-- Location: LCCOMB_X36_Y16_N18
\mousectrl|ps2io|process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|process_2~0_combout\ = (\mousectrl|ps2io|sigsendend~regout\) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datad => \mousectrl|ps2io|sigsendend~regout\,
	combout => \mousectrl|ps2io|process_2~0_combout\);

-- Location: LCFF_X34_Y16_N5
\mousectrl|ps2io|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[0]~15_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(0));

-- Location: LCCOMB_X34_Y16_N6
\mousectrl|ps2io|count[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[1]~17_combout\ = (\mousectrl|ps2io|count\(1) & (!\mousectrl|ps2io|count[0]~16\)) # (!\mousectrl|ps2io|count\(1) & ((\mousectrl|ps2io|count[0]~16\) # (GND)))
-- \mousectrl|ps2io|count[1]~18\ = CARRY((!\mousectrl|ps2io|count[0]~16\) # (!\mousectrl|ps2io|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(1),
	datad => VCC,
	cin => \mousectrl|ps2io|count[0]~16\,
	combout => \mousectrl|ps2io|count[1]~17_combout\,
	cout => \mousectrl|ps2io|count[1]~18\);

-- Location: LCFF_X34_Y16_N7
\mousectrl|ps2io|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[1]~17_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(1));

-- Location: LCCOMB_X34_Y16_N8
\mousectrl|ps2io|count[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[2]~19_combout\ = (\mousectrl|ps2io|count\(2) & (\mousectrl|ps2io|count[1]~18\ $ (GND))) # (!\mousectrl|ps2io|count\(2) & (!\mousectrl|ps2io|count[1]~18\ & VCC))
-- \mousectrl|ps2io|count[2]~20\ = CARRY((\mousectrl|ps2io|count\(2) & !\mousectrl|ps2io|count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(2),
	datad => VCC,
	cin => \mousectrl|ps2io|count[1]~18\,
	combout => \mousectrl|ps2io|count[2]~19_combout\,
	cout => \mousectrl|ps2io|count[2]~20\);

-- Location: LCFF_X34_Y16_N9
\mousectrl|ps2io|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[2]~19_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(2));

-- Location: LCCOMB_X34_Y16_N14
\mousectrl|ps2io|count[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[5]~26_combout\ = (\mousectrl|ps2io|count\(5) & (!\mousectrl|ps2io|count[4]~25\)) # (!\mousectrl|ps2io|count\(5) & ((\mousectrl|ps2io|count[4]~25\) # (GND)))
-- \mousectrl|ps2io|count[5]~27\ = CARRY((!\mousectrl|ps2io|count[4]~25\) # (!\mousectrl|ps2io|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(5),
	datad => VCC,
	cin => \mousectrl|ps2io|count[4]~25\,
	combout => \mousectrl|ps2io|count[5]~26_combout\,
	cout => \mousectrl|ps2io|count[5]~27\);

-- Location: LCFF_X34_Y16_N15
\mousectrl|ps2io|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[5]~26_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(5));

-- Location: LCCOMB_X34_Y16_N16
\mousectrl|ps2io|count[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[6]~28_combout\ = (\mousectrl|ps2io|count\(6) & (\mousectrl|ps2io|count[5]~27\ $ (GND))) # (!\mousectrl|ps2io|count\(6) & (!\mousectrl|ps2io|count[5]~27\ & VCC))
-- \mousectrl|ps2io|count[6]~29\ = CARRY((\mousectrl|ps2io|count\(6) & !\mousectrl|ps2io|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(6),
	datad => VCC,
	cin => \mousectrl|ps2io|count[5]~27\,
	combout => \mousectrl|ps2io|count[6]~28_combout\,
	cout => \mousectrl|ps2io|count[6]~29\);

-- Location: LCFF_X34_Y16_N17
\mousectrl|ps2io|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[6]~28_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(6));

-- Location: LCCOMB_X34_Y16_N18
\mousectrl|ps2io|count[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[7]~30_combout\ = (\mousectrl|ps2io|count\(7) & (!\mousectrl|ps2io|count[6]~29\)) # (!\mousectrl|ps2io|count\(7) & ((\mousectrl|ps2io|count[6]~29\) # (GND)))
-- \mousectrl|ps2io|count[7]~31\ = CARRY((!\mousectrl|ps2io|count[6]~29\) # (!\mousectrl|ps2io|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(7),
	datad => VCC,
	cin => \mousectrl|ps2io|count[6]~29\,
	combout => \mousectrl|ps2io|count[7]~30_combout\,
	cout => \mousectrl|ps2io|count[7]~31\);

-- Location: LCFF_X34_Y16_N19
\mousectrl|ps2io|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[7]~30_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(7));

-- Location: LCCOMB_X34_Y16_N22
\mousectrl|ps2io|count[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[9]~34_combout\ = (\mousectrl|ps2io|count\(9) & (!\mousectrl|ps2io|count[8]~33\)) # (!\mousectrl|ps2io|count\(9) & ((\mousectrl|ps2io|count[8]~33\) # (GND)))
-- \mousectrl|ps2io|count[9]~35\ = CARRY((!\mousectrl|ps2io|count[8]~33\) # (!\mousectrl|ps2io|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(9),
	datad => VCC,
	cin => \mousectrl|ps2io|count[8]~33\,
	combout => \mousectrl|ps2io|count[9]~34_combout\,
	cout => \mousectrl|ps2io|count[9]~35\);

-- Location: LCFF_X34_Y16_N23
\mousectrl|ps2io|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[9]~34_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(9));

-- Location: LCCOMB_X34_Y16_N24
\mousectrl|ps2io|count[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[10]~36_combout\ = (\mousectrl|ps2io|count\(10) & (\mousectrl|ps2io|count[9]~35\ $ (GND))) # (!\mousectrl|ps2io|count\(10) & (!\mousectrl|ps2io|count[9]~35\ & VCC))
-- \mousectrl|ps2io|count[10]~37\ = CARRY((\mousectrl|ps2io|count\(10) & !\mousectrl|ps2io|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|count\(10),
	datad => VCC,
	cin => \mousectrl|ps2io|count[9]~35\,
	combout => \mousectrl|ps2io|count[10]~36_combout\,
	cout => \mousectrl|ps2io|count[10]~37\);

-- Location: LCFF_X34_Y16_N25
\mousectrl|ps2io|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[10]~36_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(10));

-- Location: LCCOMB_X34_Y16_N26
\mousectrl|ps2io|count[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count[11]~38_combout\ = \mousectrl|ps2io|count[10]~37\ $ (\mousectrl|ps2io|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|ps2io|count\(11),
	cin => \mousectrl|ps2io|count[10]~37\,
	combout => \mousectrl|ps2io|count[11]~38_combout\);

-- Location: LCFF_X34_Y16_N27
\mousectrl|ps2io|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count[11]~38_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|count[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|count\(11));

-- Location: LCCOMB_X35_Y16_N16
\mousectrl|ps2io|sigclkheld~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigclkheld~2_combout\ = (((!\mousectrl|ps2io|ps2_clk~1_combout\ & !\mousectrl|ps2io|ps2_clk~2_combout\)) # (!\mousectrl|ps2io|count\(11))) # (!\mousectrl|ps2io|ps2_clk~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|ps2_clk~3_combout\,
	datab => \mousectrl|ps2io|count\(11),
	datac => \mousectrl|ps2io|ps2_clk~1_combout\,
	datad => \mousectrl|ps2io|ps2_clk~2_combout\,
	combout => \mousectrl|ps2io|sigclkheld~2_combout\);

-- Location: LCCOMB_X35_Y16_N20
\mousectrl|ps2io|sigclkheld~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigclkheld~3_combout\ = (!\mousectrl|ps2io|sigclkheld~2_combout\ & ((\mousectrl|ps2io|count\(9)) # ((\mousectrl|ps2io|count\(10)) # (!\mousectrl|ps2io|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|count\(9),
	datab => \mousectrl|ps2io|count\(10),
	datac => \mousectrl|ps2io|sigclkheld~2_combout\,
	datad => \mousectrl|ps2io|LessThan4~2_combout\,
	combout => \mousectrl|ps2io|sigclkheld~3_combout\);

-- Location: LCFF_X35_Y16_N21
\mousectrl|ps2io|sigclkheld\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sigclkheld~3_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	ena => \mousectrl|ps2io|sigsending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sigclkheld~regout\);

-- Location: LCCOMB_X35_Y16_N2
\mousectrl|ps2io|TOPS2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|TOPS2~0_combout\ = (\KEY~combout\(0) & \mousectrl|ps2io|sigsending~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \mousectrl|ps2io|sigsending~regout\,
	combout => \mousectrl|ps2io|TOPS2~0_combout\);

-- Location: LCCOMB_X36_Y16_N30
\mousectrl|ps2io|sigsendend~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sigsendend~2_combout\ = (\mousectrl|ps2io|sigclkheld~regout\) # (!\mousectrl|ps2io|TOPS2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|ps2io|sigclkheld~regout\,
	datad => \mousectrl|ps2io|TOPS2~0_combout\,
	combout => \mousectrl|ps2io|sigsendend~2_combout\);

-- Location: LCFF_X36_Y16_N15
\mousectrl|ps2io|TOPS2:count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|TOPS2:count[0]~0_combout\,
	aclr => \mousectrl|ps2io|sigsendend~2_combout\,
	ena => \mousectrl|ps2io|TOPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|TOPS2:count[0]~regout\);

-- Location: LCCOMB_X36_Y16_N2
\mousectrl|ps2io|TOPS2:count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|TOPS2:count[2]~0_combout\ = (\mousectrl|ps2io|TOPS2:count[0]~regout\ & (!\mousectrl|ps2io|sigclkreleased~regout\ & \mousectrl|ps2io|sigsending~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	datac => \mousectrl|ps2io|sigclkreleased~regout\,
	datad => \mousectrl|ps2io|sigsending~regout\,
	combout => \mousectrl|ps2io|TOPS2:count[2]~0_combout\);

-- Location: LCCOMB_X36_Y16_N26
\mousectrl|ps2io|TOPS2:count[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|TOPS2:count[2]~1_combout\ = \mousectrl|ps2io|TOPS2:count[2]~regout\ $ (((\mousectrl|ps2io|TOPS2:count[1]~regout\ & (\mousectrl|ps2io|TOPS2:count[2]~0_combout\ & !\mousectrl|ps2io|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[2]~0_combout\,
	datac => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|Equal5~1_combout\,
	combout => \mousectrl|ps2io|TOPS2:count[2]~1_combout\);

-- Location: LCFF_X36_Y16_N27
\mousectrl|ps2io|TOPS2:count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|TOPS2:count[2]~1_combout\,
	aclr => \mousectrl|ps2io|sigsendend~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|TOPS2:count[2]~regout\);

-- Location: LCCOMB_X36_Y16_N20
\mousectrl|ps2io|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add6~0_combout\ = (\mousectrl|ps2io|TOPS2:count[1]~regout\ & ((\mousectrl|ps2io|TOPS2:count[2]~regout\ & (\mousectrl|ps2io|TOPS2:count[3]~regout\ $ (\mousectrl|ps2io|TOPS2:count[0]~regout\))) # (!\mousectrl|ps2io|TOPS2:count[2]~regout\ & 
-- (\mousectrl|ps2io|TOPS2:count[3]~regout\ & \mousectrl|ps2io|TOPS2:count[0]~regout\)))) # (!\mousectrl|ps2io|TOPS2:count[1]~regout\ & (((\mousectrl|ps2io|TOPS2:count[3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|Add6~0_combout\);

-- Location: LCFF_X36_Y16_N21
\mousectrl|ps2io|TOPS2:count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add6~0_combout\,
	aclr => \mousectrl|ps2io|sigsendend~2_combout\,
	ena => \mousectrl|ps2io|TOPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|TOPS2:count[3]~regout\);

-- Location: LCCOMB_X36_Y16_N28
\mousectrl|ps2io|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add6~1_combout\ = (\mousectrl|ps2io|TOPS2:count[1]~regout\ & (!\mousectrl|ps2io|TOPS2:count[0]~regout\ & ((\mousectrl|ps2io|TOPS2:count[2]~regout\) # (!\mousectrl|ps2io|TOPS2:count[3]~regout\)))) # 
-- (!\mousectrl|ps2io|TOPS2:count[1]~regout\ & (((\mousectrl|ps2io|TOPS2:count[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datac => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|Add6~1_combout\);

-- Location: LCFF_X36_Y16_N29
\mousectrl|ps2io|TOPS2:count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add6~1_combout\,
	aclr => \mousectrl|ps2io|sigsendend~2_combout\,
	ena => \mousectrl|ps2io|TOPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|TOPS2:count[1]~regout\);

-- Location: LCCOMB_X37_Y15_N22
\mousectrl|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|state~14_combout\ = (!\mousectrl|count\(0) & (!\mousectrl|count\(1) & \mousectrl|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(0),
	datab => \mousectrl|count\(1),
	datac => \mousectrl|count\(3),
	combout => \mousectrl|state~14_combout\);

-- Location: LCCOMB_X34_Y15_N26
\mousectrl|ps2io|count~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count~13_combout\ = (!\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (((\mousectrl|ps2io|FROMPS2:count[2]~regout\) # (!\mousectrl|ps2io|FROMPS2:count[1]~regout\)) # (!\mousectrl|ps2io|FROMPS2:count[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[3]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|count~13_combout\);

-- Location: LCCOMB_X35_Y16_N18
\mousectrl|ps2io|FROMPS2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|FROMPS2~1_combout\ = (\mousectrl|ps2io|sigsending~regout\) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \mousectrl|ps2io|sigsending~regout\,
	combout => \mousectrl|ps2io|FROMPS2~1_combout\);

-- Location: LCFF_X34_Y15_N27
\mousectrl|ps2io|FROMPS2:count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count~13_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|FROMPS2:count[0]~regout\);

-- Location: LCCOMB_X34_Y15_N4
\mousectrl|ps2io|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Add3~0_combout\ = \mousectrl|ps2io|FROMPS2:count[2]~regout\ $ (((\mousectrl|ps2io|FROMPS2:count[0]~regout\ & \mousectrl|ps2io|FROMPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|Add3~0_combout\);

-- Location: LCFF_X34_Y15_N5
\mousectrl|ps2io|FROMPS2:count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|Add3~0_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|FROMPS2:count[2]~regout\);

-- Location: LCCOMB_X34_Y15_N10
\mousectrl|ps2io|count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|count~12_combout\ = (\mousectrl|ps2io|FROMPS2:count[1]~regout\ & (!\mousectrl|ps2io|FROMPS2:count[0]~regout\ & ((\mousectrl|ps2io|FROMPS2:count[2]~regout\) # (!\mousectrl|ps2io|FROMPS2:count[3]~regout\)))) # 
-- (!\mousectrl|ps2io|FROMPS2:count[1]~regout\ & (((\mousectrl|ps2io|FROMPS2:count[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[3]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|count~12_combout\);

-- Location: LCFF_X34_Y15_N11
\mousectrl|ps2io|FROMPS2:count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|count~12_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|FROMPS2:count[1]~regout\);

-- Location: LCCOMB_X34_Y15_N18
\mousectrl|ps2io|FROMPS2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|FROMPS2~0_combout\ = \mousectrl|ps2io|FROMPS2:count[3]~regout\ $ (((\mousectrl|ps2io|FROMPS2:count[1]~regout\) # ((\mousectrl|ps2io|FROMPS2:count[2]~regout\) # (\mousectrl|ps2io|FROMPS2:count[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[3]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|FROMPS2~0_combout\);

-- Location: LCCOMB_X34_Y15_N8
\mousectrl|ps2io|sdata[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[1]~2_combout\ = (\mousectrl|ps2io|FROMPS2:count[1]~regout\ & (!\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (!\mousectrl|ps2io|sigsending~regout\ & !\mousectrl|ps2io|FROMPS2:count[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datac => \mousectrl|ps2io|sigsending~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	combout => \mousectrl|ps2io|sdata[1]~2_combout\);

-- Location: LCCOMB_X35_Y15_N6
\mousectrl|ps2io|sdata[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[1]~3_combout\ = (\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata[1]~2_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|sdata[1]~2_combout\ & ((\mousectrl|ps2io|sdata\(1)))))) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & 
-- (((\mousectrl|ps2io|sdata\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DAT~0\,
	datab => \mousectrl|ps2io|FROMPS2~0_combout\,
	datac => \mousectrl|ps2io|sdata\(1),
	datad => \mousectrl|ps2io|sdata[1]~2_combout\,
	combout => \mousectrl|ps2io|sdata[1]~3_combout\);

-- Location: LCFF_X35_Y15_N7
\mousectrl|ps2io|sdata[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[1]~3_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(1));

-- Location: LCCOMB_X35_Y15_N0
\mousectrl|ps2io|sdata[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[7]~8_combout\ = (\mousectrl|ps2io|sigsending~regout\) # ((\mousectrl|ps2io|FROMPS2:count[0]~regout\) # ((\mousectrl|ps2io|FROMPS2:count[2]~regout\) # (\mousectrl|ps2io|FROMPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sigsending~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|sdata[7]~8_combout\);

-- Location: LCCOMB_X35_Y15_N4
\mousectrl|ps2io|sdata[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[7]~9_combout\ = (\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata[7]~8_combout\ & ((\mousectrl|ps2io|sdata\(7)))) # (!\mousectrl|ps2io|sdata[7]~8_combout\ & (\PS2_DAT~0\)))) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & 
-- (((\mousectrl|ps2io|sdata\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DAT~0\,
	datab => \mousectrl|ps2io|FROMPS2~0_combout\,
	datac => \mousectrl|ps2io|sdata\(7),
	datad => \mousectrl|ps2io|sdata[7]~8_combout\,
	combout => \mousectrl|ps2io|sdata[7]~9_combout\);

-- Location: LCFF_X35_Y15_N5
\mousectrl|ps2io|sdata[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[7]~9_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(7));

-- Location: LCCOMB_X35_Y15_N2
\mousectrl|ps2io|sdata[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[6]~11_combout\ = (\mousectrl|ps2io|sdata[6]~10_combout\ & ((\mousectrl|ps2io|FROMPS2~0_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata\(6)))))) # (!\mousectrl|ps2io|sdata[6]~10_combout\ & 
-- (((\mousectrl|ps2io|sdata\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata[6]~10_combout\,
	datab => \PS2_DAT~0\,
	datac => \mousectrl|ps2io|sdata\(6),
	datad => \mousectrl|ps2io|FROMPS2~0_combout\,
	combout => \mousectrl|ps2io|sdata[6]~11_combout\);

-- Location: LCFF_X35_Y15_N3
\mousectrl|ps2io|sdata[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[6]~11_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(6));

-- Location: LCCOMB_X36_Y15_N14
\mousectrl|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Equal1~1_combout\ = (!\mousectrl|ps2io|sdata\(7) & !\mousectrl|ps2io|sdata\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|ps2io|sdata\(7),
	datad => \mousectrl|ps2io|sdata\(6),
	combout => \mousectrl|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y15_N26
\mousectrl|ps2io|sdata[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[4]~13_combout\ = (\mousectrl|ps2io|sdata[4]~12_combout\ & ((\mousectrl|ps2io|FROMPS2~0_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata\(4)))))) # (!\mousectrl|ps2io|sdata[4]~12_combout\ & 
-- (((\mousectrl|ps2io|sdata\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata[4]~12_combout\,
	datab => \PS2_DAT~0\,
	datac => \mousectrl|ps2io|sdata\(4),
	datad => \mousectrl|ps2io|FROMPS2~0_combout\,
	combout => \mousectrl|ps2io|sdata[4]~13_combout\);

-- Location: LCFF_X35_Y15_N27
\mousectrl|ps2io|sdata[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[4]~13_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(4));

-- Location: LCCOMB_X35_Y15_N8
\mousectrl|ps2io|sdata[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[2]~5_combout\ = (\mousectrl|ps2io|sdata[2]~4_combout\ & ((\mousectrl|ps2io|FROMPS2~0_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata\(2)))))) # (!\mousectrl|ps2io|sdata[2]~4_combout\ & 
-- (((\mousectrl|ps2io|sdata\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata[2]~4_combout\,
	datab => \PS2_DAT~0\,
	datac => \mousectrl|ps2io|sdata\(2),
	datad => \mousectrl|ps2io|FROMPS2~0_combout\,
	combout => \mousectrl|ps2io|sdata[2]~5_combout\);

-- Location: LCFF_X35_Y15_N9
\mousectrl|ps2io|sdata[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[2]~5_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(2));

-- Location: LCCOMB_X34_Y15_N28
\mousectrl|ps2io|sdata[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[5]~14_combout\ = (\mousectrl|ps2io|FROMPS2:count[1]~regout\ & (\mousectrl|ps2io|FROMPS2:count[2]~regout\ & (!\mousectrl|ps2io|sigsending~regout\ & !\mousectrl|ps2io|FROMPS2:count[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|sigsending~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|sdata[5]~14_combout\);

-- Location: LCCOMB_X34_Y15_N14
\mousectrl|ps2io|sdata[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[5]~15_combout\ = (\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata[5]~14_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|sdata[5]~14_combout\ & ((\mousectrl|ps2io|sdata\(5)))))) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & 
-- (((\mousectrl|ps2io|sdata\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DAT~0\,
	datab => \mousectrl|ps2io|FROMPS2~0_combout\,
	datac => \mousectrl|ps2io|sdata\(5),
	datad => \mousectrl|ps2io|sdata[5]~14_combout\,
	combout => \mousectrl|ps2io|sdata[5]~15_combout\);

-- Location: LCFF_X34_Y15_N15
\mousectrl|ps2io|sdata[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[5]~15_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(5));

-- Location: LCCOMB_X35_Y15_N14
\mousectrl|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Equal1~0_combout\ = (!\mousectrl|ps2io|sdata\(3) & (!\mousectrl|ps2io|sdata\(4) & (!\mousectrl|ps2io|sdata\(2) & !\mousectrl|ps2io|sdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata\(3),
	datab => \mousectrl|ps2io|sdata\(4),
	datac => \mousectrl|ps2io|sdata\(2),
	datad => \mousectrl|ps2io|sdata\(5),
	combout => \mousectrl|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y15_N30
\mousectrl|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Equal1~2_combout\ = (!\mousectrl|ps2io|sdata\(0) & (!\mousectrl|ps2io|sdata\(1) & (\mousectrl|Equal1~1_combout\ & \mousectrl|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata\(0),
	datab => \mousectrl|ps2io|sdata\(1),
	datac => \mousectrl|Equal1~1_combout\,
	datad => \mousectrl|Equal1~0_combout\,
	combout => \mousectrl|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y15_N28
\mousectrl|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Equal2~0_combout\ = (\mousectrl|ps2io|sdata\(0) & (\mousectrl|ps2io|sdata\(1) & (\mousectrl|Equal1~1_combout\ & \mousectrl|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata\(0),
	datab => \mousectrl|ps2io|sdata\(1),
	datac => \mousectrl|Equal1~1_combout\,
	datad => \mousectrl|Equal1~0_combout\,
	combout => \mousectrl|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y15_N0
\mousectrl|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|state~15_combout\ = ((\mousectrl|state~14_combout\ & (!\mousectrl|Equal1~2_combout\ & !\mousectrl|Equal2~0_combout\))) # (!\mousectrl|ps2io|parchecked~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|parchecked~regout\,
	datab => \mousectrl|state~14_combout\,
	datac => \mousectrl|Equal1~2_combout\,
	datad => \mousectrl|Equal2~0_combout\,
	combout => \mousectrl|state~15_combout\);

-- Location: LCCOMB_X37_Y15_N8
\mousectrl|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector9~0_combout\ = (\mousectrl|state.SEND~regout\) # ((\mousectrl|state.WAITACK~regout\ & \mousectrl|state~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|state.SEND~regout\,
	datac => \mousectrl|state.WAITACK~regout\,
	datad => \mousectrl|state~15_combout\,
	combout => \mousectrl|Selector9~0_combout\);

-- Location: LCFF_X37_Y15_N9
\mousectrl|state.WAITACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector9~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|state.WAITACK~regout\);

-- Location: LCCOMB_X37_Y15_N18
\mousectrl|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector10~0_combout\ = (\mousectrl|state.WAITACK~regout\ & !\mousectrl|state~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|state.WAITACK~regout\,
	datad => \mousectrl|state~15_combout\,
	combout => \mousectrl|Selector10~0_combout\);

-- Location: LCFF_X37_Y15_N19
\mousectrl|state.NEXTCMD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector10~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|state.NEXTCMD~regout\);

-- Location: LCCOMB_X37_Y15_N2
\mousectrl|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector14~0_combout\ = (\mousectrl|state.NEXTCMD~regout\ & (\mousectrl|count\(0) $ (\mousectrl|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(0),
	datac => \mousectrl|count\(1),
	datad => \mousectrl|state.NEXTCMD~regout\,
	combout => \mousectrl|Selector14~0_combout\);

-- Location: LCCOMB_X37_Y15_N28
\mousectrl|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|WideOr2~0_combout\ = (\mousectrl|state.CLEAR~regout\) # (\mousectrl|state.NEXTCMD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|state.CLEAR~regout\,
	datad => \mousectrl|state.NEXTCMD~regout\,
	combout => \mousectrl|WideOr2~0_combout\);

-- Location: LCFF_X37_Y15_N3
\mousectrl|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector14~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|count\(1));

-- Location: LCCOMB_X37_Y15_N26
\mousectrl|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector13~0_combout\ = (\mousectrl|state.NEXTCMD~regout\ & (\mousectrl|count\(2) $ (((\mousectrl|count\(0) & \mousectrl|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(0),
	datab => \mousectrl|count\(1),
	datac => \mousectrl|count\(2),
	datad => \mousectrl|state.NEXTCMD~regout\,
	combout => \mousectrl|Selector13~0_combout\);

-- Location: LCFF_X37_Y15_N27
\mousectrl|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector13~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|count\(2));

-- Location: LCCOMB_X37_Y15_N14
\mousectrl|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Add0~0_combout\ = \mousectrl|count\(3) $ (((\mousectrl|count\(0) & (\mousectrl|count\(1) & \mousectrl|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(0),
	datab => \mousectrl|count\(1),
	datac => \mousectrl|count\(3),
	datad => \mousectrl|count\(2),
	combout => \mousectrl|Add0~0_combout\);

-- Location: LCCOMB_X37_Y15_N4
\mousectrl|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector12~0_combout\ = (\mousectrl|Add0~0_combout\ & \mousectrl|state.NEXTCMD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|Add0~0_combout\,
	datad => \mousectrl|state.NEXTCMD~regout\,
	combout => \mousectrl|Selector12~0_combout\);

-- Location: LCFF_X37_Y15_N5
\mousectrl|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector12~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|count\(3));

-- Location: LCCOMB_X37_Y15_N20
\mousectrl|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector15~0_combout\ = (\mousectrl|count\(0) & (!\mousectrl|state.CLEAR~regout\ & !\mousectrl|state.NEXTCMD~regout\)) # (!\mousectrl|count\(0) & ((\mousectrl|state.NEXTCMD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|state.CLEAR~regout\,
	datac => \mousectrl|count\(0),
	datad => \mousectrl|state.NEXTCMD~regout\,
	combout => \mousectrl|Selector15~0_combout\);

-- Location: LCFF_X37_Y15_N21
\mousectrl|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector15~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|count\(0));

-- Location: LCCOMB_X37_Y15_N16
\mousectrl|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector11~0_combout\ = (!\mousectrl|count\(0) & (\mousectrl|count\(1) & (\mousectrl|count\(3) & !\mousectrl|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(0),
	datab => \mousectrl|count\(1),
	datac => \mousectrl|count\(3),
	datad => \mousectrl|count\(2),
	combout => \mousectrl|Selector11~0_combout\);

-- Location: LCCOMB_X35_Y16_N30
\mousectrl|ps2io|send_rdy~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|send_rdy~1_combout\ = (!\mousectrl|ps2io|TOPS2~0_combout\ & ((\mousectrl|ps2io|send_rdy~1_combout\) # (!\KEY~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|TOPS2~0_combout\,
	datac => \KEY~combout\(0),
	datad => \mousectrl|ps2io|send_rdy~1_combout\,
	combout => \mousectrl|ps2io|send_rdy~1_combout\);

-- Location: LCCOMB_X33_Y16_N14
\mousectrl|ps2io|countclk[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[1]~18_combout\ = (\mousectrl|ps2io|countclk\(0) & (\mousectrl|ps2io|countclk\(1) $ (VCC))) # (!\mousectrl|ps2io|countclk\(0) & (\mousectrl|ps2io|countclk\(1) & VCC))
-- \mousectrl|ps2io|countclk[1]~19\ = CARRY((\mousectrl|ps2io|countclk\(0) & \mousectrl|ps2io|countclk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(0),
	datab => \mousectrl|ps2io|countclk\(1),
	datad => VCC,
	combout => \mousectrl|ps2io|countclk[1]~18_combout\,
	cout => \mousectrl|ps2io|countclk[1]~19\);

-- Location: LCCOMB_X33_Y16_N24
\mousectrl|ps2io|countclk[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[6]~28_combout\ = (\mousectrl|ps2io|countclk\(6) & (!\mousectrl|ps2io|countclk[5]~27\)) # (!\mousectrl|ps2io|countclk\(6) & ((\mousectrl|ps2io|countclk[5]~27\) # (GND)))
-- \mousectrl|ps2io|countclk[6]~29\ = CARRY((!\mousectrl|ps2io|countclk[5]~27\) # (!\mousectrl|ps2io|countclk\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(6),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[5]~27\,
	combout => \mousectrl|ps2io|countclk[6]~28_combout\,
	cout => \mousectrl|ps2io|countclk[6]~29\);

-- Location: LCFF_X33_Y16_N25
\mousectrl|ps2io|countclk[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[6]~28_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(6));

-- Location: LCCOMB_X33_Y16_N2
\mousectrl|ps2io|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal2~2_combout\ = (!\mousectrl|ps2io|countclk\(4) & (!\mousectrl|ps2io|countclk\(5) & (\mousectrl|ps2io|countclk\(6) & !\mousectrl|ps2io|countclk\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(4),
	datab => \mousectrl|ps2io|countclk\(5),
	datac => \mousectrl|ps2io|countclk\(6),
	datad => \mousectrl|ps2io|countclk\(7),
	combout => \mousectrl|ps2io|Equal2~2_combout\);

-- Location: LCCOMB_X33_Y15_N8
\mousectrl|ps2io|countclk[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[14]~44_combout\ = (\mousectrl|ps2io|countclk\(14) & (!\mousectrl|ps2io|countclk[13]~43\)) # (!\mousectrl|ps2io|countclk\(14) & ((\mousectrl|ps2io|countclk[13]~43\) # (GND)))
-- \mousectrl|ps2io|countclk[14]~45\ = CARRY((!\mousectrl|ps2io|countclk[13]~43\) # (!\mousectrl|ps2io|countclk\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(14),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[13]~43\,
	combout => \mousectrl|ps2io|countclk[14]~44_combout\,
	cout => \mousectrl|ps2io|countclk[14]~45\);

-- Location: LCFF_X33_Y15_N9
\mousectrl|ps2io|countclk[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[14]~44_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(14));

-- Location: LCCOMB_X33_Y15_N20
\mousectrl|ps2io|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal2~4_combout\ = (!\mousectrl|ps2io|countclk\(13) & (!\mousectrl|ps2io|countclk\(12) & (!\mousectrl|ps2io|countclk\(14) & !\mousectrl|ps2io|countclk\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(13),
	datab => \mousectrl|ps2io|countclk\(12),
	datac => \mousectrl|ps2io|countclk\(14),
	datad => \mousectrl|ps2io|countclk\(15),
	combout => \mousectrl|ps2io|Equal2~4_combout\);

-- Location: LCCOMB_X33_Y16_N0
\mousectrl|ps2io|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal2~3_combout\ = (\mousectrl|ps2io|countclk\(9) & (\mousectrl|ps2io|countclk\(10) & (\mousectrl|ps2io|countclk\(8) & !\mousectrl|ps2io|countclk\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(9),
	datab => \mousectrl|ps2io|countclk\(10),
	datac => \mousectrl|ps2io|countclk\(8),
	datad => \mousectrl|ps2io|countclk\(11),
	combout => \mousectrl|ps2io|Equal2~3_combout\);

-- Location: LCCOMB_X33_Y16_N6
\mousectrl|ps2io|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal2~5_combout\ = (\mousectrl|ps2io|Equal2~1_combout\ & (\mousectrl|ps2io|Equal2~2_combout\ & (\mousectrl|ps2io|Equal2~4_combout\ & \mousectrl|ps2io|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|Equal2~1_combout\,
	datab => \mousectrl|ps2io|Equal2~2_combout\,
	datac => \mousectrl|ps2io|Equal2~4_combout\,
	datad => \mousectrl|ps2io|Equal2~3_combout\,
	combout => \mousectrl|ps2io|Equal2~5_combout\);

-- Location: LCCOMB_X33_Y16_N12
\mousectrl|ps2io|countclk[18]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[18]~54_combout\ = (!\mousectrl|ps2io|sigsending~regout\ & ((!\mousectrl|ps2io|Equal2~5_combout\) # (!\mousectrl|ps2io|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|Equal2~0_combout\,
	datac => \mousectrl|ps2io|sigsending~regout\,
	datad => \mousectrl|ps2io|Equal2~5_combout\,
	combout => \mousectrl|ps2io|countclk[18]~54_combout\);

-- Location: LCFF_X33_Y16_N15
\mousectrl|ps2io|countclk[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[1]~18_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(1));

-- Location: LCCOMB_X33_Y16_N18
\mousectrl|ps2io|countclk[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[3]~22_combout\ = (\mousectrl|ps2io|countclk\(3) & (\mousectrl|ps2io|countclk[2]~21\ $ (GND))) # (!\mousectrl|ps2io|countclk\(3) & (!\mousectrl|ps2io|countclk[2]~21\ & VCC))
-- \mousectrl|ps2io|countclk[3]~23\ = CARRY((\mousectrl|ps2io|countclk\(3) & !\mousectrl|ps2io|countclk[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(3),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[2]~21\,
	combout => \mousectrl|ps2io|countclk[3]~22_combout\,
	cout => \mousectrl|ps2io|countclk[3]~23\);

-- Location: LCFF_X33_Y16_N19
\mousectrl|ps2io|countclk[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[3]~22_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(3));

-- Location: LCCOMB_X33_Y16_N22
\mousectrl|ps2io|countclk[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[5]~26_combout\ = (\mousectrl|ps2io|countclk\(5) & (\mousectrl|ps2io|countclk[4]~25\ $ (GND))) # (!\mousectrl|ps2io|countclk\(5) & (!\mousectrl|ps2io|countclk[4]~25\ & VCC))
-- \mousectrl|ps2io|countclk[5]~27\ = CARRY((\mousectrl|ps2io|countclk\(5) & !\mousectrl|ps2io|countclk[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(5),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[4]~25\,
	combout => \mousectrl|ps2io|countclk[5]~26_combout\,
	cout => \mousectrl|ps2io|countclk[5]~27\);

-- Location: LCFF_X33_Y16_N23
\mousectrl|ps2io|countclk[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[5]~26_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(5));

-- Location: LCCOMB_X33_Y16_N26
\mousectrl|ps2io|countclk[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[7]~30_combout\ = (\mousectrl|ps2io|countclk\(7) & (\mousectrl|ps2io|countclk[6]~29\ $ (GND))) # (!\mousectrl|ps2io|countclk\(7) & (!\mousectrl|ps2io|countclk[6]~29\ & VCC))
-- \mousectrl|ps2io|countclk[7]~31\ = CARRY((\mousectrl|ps2io|countclk\(7) & !\mousectrl|ps2io|countclk[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(7),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[6]~29\,
	combout => \mousectrl|ps2io|countclk[7]~30_combout\,
	cout => \mousectrl|ps2io|countclk[7]~31\);

-- Location: LCFF_X33_Y16_N27
\mousectrl|ps2io|countclk[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[7]~30_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(7));

-- Location: LCCOMB_X33_Y16_N28
\mousectrl|ps2io|countclk[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[8]~32_combout\ = (\mousectrl|ps2io|countclk\(8) & (!\mousectrl|ps2io|countclk[7]~31\)) # (!\mousectrl|ps2io|countclk\(8) & ((\mousectrl|ps2io|countclk[7]~31\) # (GND)))
-- \mousectrl|ps2io|countclk[8]~33\ = CARRY((!\mousectrl|ps2io|countclk[7]~31\) # (!\mousectrl|ps2io|countclk\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(8),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[7]~31\,
	combout => \mousectrl|ps2io|countclk[8]~32_combout\,
	cout => \mousectrl|ps2io|countclk[8]~33\);

-- Location: LCFF_X33_Y16_N29
\mousectrl|ps2io|countclk[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[8]~32_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(8));

-- Location: LCCOMB_X33_Y15_N0
\mousectrl|ps2io|countclk[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[10]~36_combout\ = (\mousectrl|ps2io|countclk\(10) & (!\mousectrl|ps2io|countclk[9]~35\)) # (!\mousectrl|ps2io|countclk\(10) & ((\mousectrl|ps2io|countclk[9]~35\) # (GND)))
-- \mousectrl|ps2io|countclk[10]~37\ = CARRY((!\mousectrl|ps2io|countclk[9]~35\) # (!\mousectrl|ps2io|countclk\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(10),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[9]~35\,
	combout => \mousectrl|ps2io|countclk[10]~36_combout\,
	cout => \mousectrl|ps2io|countclk[10]~37\);

-- Location: LCFF_X33_Y15_N1
\mousectrl|ps2io|countclk[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[10]~36_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(10));

-- Location: LCCOMB_X33_Y15_N2
\mousectrl|ps2io|countclk[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[11]~38_combout\ = (\mousectrl|ps2io|countclk\(11) & (\mousectrl|ps2io|countclk[10]~37\ $ (GND))) # (!\mousectrl|ps2io|countclk\(11) & (!\mousectrl|ps2io|countclk[10]~37\ & VCC))
-- \mousectrl|ps2io|countclk[11]~39\ = CARRY((\mousectrl|ps2io|countclk\(11) & !\mousectrl|ps2io|countclk[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(11),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[10]~37\,
	combout => \mousectrl|ps2io|countclk[11]~38_combout\,
	cout => \mousectrl|ps2io|countclk[11]~39\);

-- Location: LCFF_X33_Y15_N3
\mousectrl|ps2io|countclk[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[11]~38_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(11));

-- Location: LCCOMB_X33_Y15_N4
\mousectrl|ps2io|countclk[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[12]~40_combout\ = (\mousectrl|ps2io|countclk\(12) & (!\mousectrl|ps2io|countclk[11]~39\)) # (!\mousectrl|ps2io|countclk\(12) & ((\mousectrl|ps2io|countclk[11]~39\) # (GND)))
-- \mousectrl|ps2io|countclk[12]~41\ = CARRY((!\mousectrl|ps2io|countclk[11]~39\) # (!\mousectrl|ps2io|countclk\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(12),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[11]~39\,
	combout => \mousectrl|ps2io|countclk[12]~40_combout\,
	cout => \mousectrl|ps2io|countclk[12]~41\);

-- Location: LCFF_X33_Y15_N5
\mousectrl|ps2io|countclk[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[12]~40_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(12));

-- Location: LCCOMB_X33_Y15_N6
\mousectrl|ps2io|countclk[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[13]~42_combout\ = (\mousectrl|ps2io|countclk\(13) & (\mousectrl|ps2io|countclk[12]~41\ $ (GND))) # (!\mousectrl|ps2io|countclk\(13) & (!\mousectrl|ps2io|countclk[12]~41\ & VCC))
-- \mousectrl|ps2io|countclk[13]~43\ = CARRY((\mousectrl|ps2io|countclk\(13) & !\mousectrl|ps2io|countclk[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(13),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[12]~41\,
	combout => \mousectrl|ps2io|countclk[13]~42_combout\,
	cout => \mousectrl|ps2io|countclk[13]~43\);

-- Location: LCFF_X33_Y15_N7
\mousectrl|ps2io|countclk[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[13]~42_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(13));

-- Location: LCCOMB_X33_Y15_N10
\mousectrl|ps2io|countclk[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[15]~46_combout\ = (\mousectrl|ps2io|countclk\(15) & (\mousectrl|ps2io|countclk[14]~45\ $ (GND))) # (!\mousectrl|ps2io|countclk\(15) & (!\mousectrl|ps2io|countclk[14]~45\ & VCC))
-- \mousectrl|ps2io|countclk[15]~47\ = CARRY((\mousectrl|ps2io|countclk\(15) & !\mousectrl|ps2io|countclk[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(15),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[14]~45\,
	combout => \mousectrl|ps2io|countclk[15]~46_combout\,
	cout => \mousectrl|ps2io|countclk[15]~47\);

-- Location: LCFF_X33_Y15_N11
\mousectrl|ps2io|countclk[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[15]~46_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(15));

-- Location: LCCOMB_X33_Y15_N12
\mousectrl|ps2io|countclk[16]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[16]~48_combout\ = (\mousectrl|ps2io|countclk\(16) & (!\mousectrl|ps2io|countclk[15]~47\)) # (!\mousectrl|ps2io|countclk\(16) & ((\mousectrl|ps2io|countclk[15]~47\) # (GND)))
-- \mousectrl|ps2io|countclk[16]~49\ = CARRY((!\mousectrl|ps2io|countclk[15]~47\) # (!\mousectrl|ps2io|countclk\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(16),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[15]~47\,
	combout => \mousectrl|ps2io|countclk[16]~48_combout\,
	cout => \mousectrl|ps2io|countclk[16]~49\);

-- Location: LCCOMB_X33_Y15_N14
\mousectrl|ps2io|countclk[17]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[17]~50_combout\ = (\mousectrl|ps2io|countclk\(17) & (\mousectrl|ps2io|countclk[16]~49\ $ (GND))) # (!\mousectrl|ps2io|countclk\(17) & (!\mousectrl|ps2io|countclk[16]~49\ & VCC))
-- \mousectrl|ps2io|countclk[17]~51\ = CARRY((\mousectrl|ps2io|countclk\(17) & !\mousectrl|ps2io|countclk[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(17),
	datad => VCC,
	cin => \mousectrl|ps2io|countclk[16]~49\,
	combout => \mousectrl|ps2io|countclk[17]~50_combout\,
	cout => \mousectrl|ps2io|countclk[17]~51\);

-- Location: LCFF_X33_Y15_N15
\mousectrl|ps2io|countclk[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[17]~50_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(17));

-- Location: LCCOMB_X33_Y15_N16
\mousectrl|ps2io|countclk[18]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|countclk[18]~52_combout\ = \mousectrl|ps2io|countclk\(18) $ (\mousectrl|ps2io|countclk[17]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|countclk\(18),
	cin => \mousectrl|ps2io|countclk[17]~51\,
	combout => \mousectrl|ps2io|countclk[18]~52_combout\);

-- Location: LCFF_X33_Y15_N17
\mousectrl|ps2io|countclk[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[18]~52_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(18));

-- Location: LCFF_X33_Y15_N13
\mousectrl|ps2io|countclk[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|countclk[16]~48_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	ena => \mousectrl|ps2io|countclk[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|countclk\(16));

-- Location: LCCOMB_X33_Y15_N26
\mousectrl|ps2io|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal2~0_combout\ = (!\mousectrl|ps2io|countclk\(17) & (\mousectrl|ps2io|countclk\(18) & !\mousectrl|ps2io|countclk\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|countclk\(17),
	datac => \mousectrl|ps2io|countclk\(18),
	datad => \mousectrl|ps2io|countclk\(16),
	combout => \mousectrl|ps2io|Equal2~0_combout\);

-- Location: LCCOMB_X33_Y16_N8
\mousectrl|ps2io|send_rdy~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|send_rdy~3_combout\ = \mousectrl|ps2io|send_rdy~1_combout\ $ (((\mousectrl|ps2io|send_rdy~2_combout\) # ((\mousectrl|ps2io|Equal2~5_combout\ & \mousectrl|ps2io|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|Equal2~5_combout\,
	datab => \mousectrl|ps2io|send_rdy~1_combout\,
	datac => \mousectrl|ps2io|Equal2~0_combout\,
	datad => \mousectrl|ps2io|send_rdy~2_combout\,
	combout => \mousectrl|ps2io|send_rdy~3_combout\);

-- Location: LCCOMB_X35_Y16_N24
\mousectrl|ps2io|send_rdy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|send_rdy~0_combout\ = (\mousectrl|ps2io|TOPS2~0_combout\) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \mousectrl|ps2io|TOPS2~0_combout\,
	combout => \mousectrl|ps2io|send_rdy~0_combout\);

-- Location: LCFF_X33_Y16_N9
\mousectrl|ps2io|send_rdy~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|ps2io|send_rdy~3_combout\,
	aclr => \mousectrl|ps2io|send_rdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|send_rdy~_emulated_regout\);

-- Location: LCCOMB_X35_Y16_N10
\mousectrl|ps2io|send_rdy~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|send_rdy~2_combout\ = (!\mousectrl|ps2io|TOPS2~0_combout\ & ((\mousectrl|ps2io|send_rdy~1_combout\ $ (\mousectrl|ps2io|send_rdy~_emulated_regout\)) # (!\KEY~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|send_rdy~1_combout\,
	datab => \KEY~combout\(0),
	datac => \mousectrl|ps2io|send_rdy~_emulated_regout\,
	datad => \mousectrl|ps2io|TOPS2~0_combout\,
	combout => \mousectrl|ps2io|send_rdy~2_combout\);

-- Location: LCCOMB_X35_Y14_N18
\mousectrl|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector7~0_combout\ = (\mousectrl|state.NEXTCMD~regout\ & (\mousectrl|Selector11~0_combout\ & ((\mousectrl|state.SETCMD~regout\) # (\mousectrl|ps2io|send_rdy~2_combout\)))) # (!\mousectrl|state.NEXTCMD~regout\ & 
-- (((\mousectrl|state.SETCMD~regout\) # (\mousectrl|ps2io|send_rdy~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|state.NEXTCMD~regout\,
	datab => \mousectrl|Selector11~0_combout\,
	datac => \mousectrl|state.SETCMD~regout\,
	datad => \mousectrl|ps2io|send_rdy~2_combout\,
	combout => \mousectrl|Selector7~0_combout\);

-- Location: LCFF_X35_Y14_N19
\mousectrl|state.SETCMD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector7~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|state.SETCMD~regout\);

-- Location: LCCOMB_X35_Y14_N20
\mousectrl|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector8~0_combout\ = (!\mousectrl|state.SETCMD~regout\ & \mousectrl|ps2io|send_rdy~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|state.SETCMD~regout\,
	datad => \mousectrl|ps2io|send_rdy~2_combout\,
	combout => \mousectrl|Selector8~0_combout\);

-- Location: LCFF_X35_Y14_N21
\mousectrl|state.SEND\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector8~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|state.SEND~regout\);

-- Location: LCCOMB_X37_Y16_N0
\mousectrl|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|state~16_combout\ = (\mousectrl|state.SEND~regout\) # (!\mousectrl|state.SETCMD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|state.SETCMD~regout\,
	datac => \mousectrl|state.SEND~regout\,
	combout => \mousectrl|state~16_combout\);

-- Location: LCCOMB_X37_Y16_N24
\mousectrl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector5~0_combout\ = (\mousectrl|state~16_combout\ & ((\mousectrl|count\(3) & (!\mousectrl|count\(1))) # (!\mousectrl|count\(3) & ((!\mousectrl|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(1),
	datab => \mousectrl|count\(3),
	datac => \mousectrl|count\(0),
	datad => \mousectrl|state~16_combout\,
	combout => \mousectrl|Selector5~0_combout\);

-- Location: LCFF_X37_Y16_N25
\mousectrl|hdata[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(1));

-- Location: LCCOMB_X38_Y16_N0
\mousectrl|ps2io|hdata[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[1]~feeder_combout\ = \mousectrl|hdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(1),
	combout => \mousectrl|ps2io|hdata[1]~feeder_combout\);

-- Location: LCFF_X38_Y16_N1
\mousectrl|ps2io|hdata[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[1]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(1));

-- Location: LCCOMB_X38_Y16_N8
\mousectrl|ps2io|ps2_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~9_combout\ = (\mousectrl|ps2io|TOPS2:count[0]~regout\ & (((\mousectrl|ps2io|hdata\(1))))) # (!\mousectrl|ps2io|TOPS2:count[0]~regout\ & (\mousectrl|ps2io|hdata\(0) & ((!\mousectrl|ps2io|TOPS2:count[3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|hdata\(0),
	datab => \mousectrl|ps2io|hdata\(1),
	datac => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|ps2_data~9_combout\);

-- Location: LCCOMB_X37_Y16_N6
\mousectrl|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Mux4~0_combout\ = (\mousectrl|count\(2) & ((\mousectrl|count\(3)) # ((\mousectrl|count\(1)) # (!\mousectrl|count\(0))))) # (!\mousectrl|count\(2) & (\mousectrl|count\(1) $ (((\mousectrl|count\(3) & !\mousectrl|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(2),
	datab => \mousectrl|count\(3),
	datac => \mousectrl|count\(0),
	datad => \mousectrl|count\(1),
	combout => \mousectrl|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y16_N18
\mousectrl|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector4~2_combout\ = (!\mousectrl|Mux4~0_combout\ & ((\mousectrl|state.SEND~regout\) # (!\mousectrl|state.SETCMD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|state.SETCMD~regout\,
	datac => \mousectrl|state.SEND~regout\,
	datad => \mousectrl|Mux4~0_combout\,
	combout => \mousectrl|Selector4~2_combout\);

-- Location: LCFF_X37_Y16_N19
\mousectrl|hdata[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(2));

-- Location: LCCOMB_X38_Y16_N2
\mousectrl|ps2io|hdata[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[2]~feeder_combout\ = \mousectrl|hdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(2),
	combout => \mousectrl|ps2io|hdata[2]~feeder_combout\);

-- Location: LCFF_X38_Y16_N3
\mousectrl|ps2io|hdata[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[2]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(2));

-- Location: LCCOMB_X37_Y16_N4
\mousectrl|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Mux3~0_combout\ = (\mousectrl|count\(2)) # ((\mousectrl|count\(3)) # (\mousectrl|count\(0) $ (\mousectrl|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(2),
	datab => \mousectrl|count\(3),
	datac => \mousectrl|count\(0),
	datad => \mousectrl|count\(1),
	combout => \mousectrl|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y16_N12
\mousectrl|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector3~2_combout\ = (!\mousectrl|Mux3~0_combout\ & ((\mousectrl|state.SEND~regout\) # (!\mousectrl|state.SETCMD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|state.SETCMD~regout\,
	datac => \mousectrl|Mux3~0_combout\,
	datad => \mousectrl|state.SEND~regout\,
	combout => \mousectrl|Selector3~2_combout\);

-- Location: LCFF_X37_Y16_N13
\mousectrl|hdata[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(3));

-- Location: LCCOMB_X38_Y16_N4
\mousectrl|ps2io|hdata[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[3]~feeder_combout\ = \mousectrl|hdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(3),
	combout => \mousectrl|ps2io|hdata[3]~feeder_combout\);

-- Location: LCFF_X38_Y16_N5
\mousectrl|ps2io|hdata[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[3]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(3));

-- Location: LCCOMB_X38_Y16_N10
\mousectrl|ps2io|ps2_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~10_combout\ = (\mousectrl|ps2io|TOPS2:count[0]~regout\ & ((\mousectrl|ps2io|hdata\(3)))) # (!\mousectrl|ps2io|TOPS2:count[0]~regout\ & (\mousectrl|ps2io|hdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|hdata\(2),
	datac => \mousectrl|ps2io|hdata\(3),
	datad => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|ps2_data~10_combout\);

-- Location: LCCOMB_X38_Y16_N28
\mousectrl|ps2io|ps2_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~11_combout\ = (!\mousectrl|ps2io|TOPS2:count[2]~regout\ & ((\mousectrl|ps2io|TOPS2:count[1]~regout\ & ((\mousectrl|ps2io|ps2_data~10_combout\))) # (!\mousectrl|ps2io|TOPS2:count[1]~regout\ & 
-- (\mousectrl|ps2io|ps2_data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datac => \mousectrl|ps2io|ps2_data~9_combout\,
	datad => \mousectrl|ps2io|ps2_data~10_combout\,
	combout => \mousectrl|ps2io|ps2_data~11_combout\);

-- Location: LCCOMB_X37_Y16_N8
\mousectrl|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector2~0_combout\ = (\mousectrl|state~16_combout\ & ((\mousectrl|count\(2) $ (!\mousectrl|count\(1))) # (!\mousectrl|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|count\(2),
	datab => \mousectrl|count\(1),
	datac => \mousectrl|count\(0),
	datad => \mousectrl|state~16_combout\,
	combout => \mousectrl|Selector2~0_combout\);

-- Location: LCFF_X37_Y16_N9
\mousectrl|hdata[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(4));

-- Location: LCCOMB_X38_Y16_N22
\mousectrl|ps2io|hdata[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[4]~feeder_combout\ = \mousectrl|hdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(4),
	combout => \mousectrl|ps2io|hdata[4]~feeder_combout\);

-- Location: LCFF_X38_Y16_N23
\mousectrl|ps2io|hdata[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[4]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(4));

-- Location: LCCOMB_X37_Y16_N2
\mousectrl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|Selector1~0_combout\ = (\mousectrl|state.SEND~regout\ & (((!\mousectrl|count\(1))) # (!\mousectrl|count\(0)))) # (!\mousectrl|state.SEND~regout\ & (!\mousectrl|state.SETCMD~regout\ & ((!\mousectrl|count\(1)) # (!\mousectrl|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|state.SEND~regout\,
	datab => \mousectrl|count\(0),
	datac => \mousectrl|state.SETCMD~regout\,
	datad => \mousectrl|count\(1),
	combout => \mousectrl|Selector1~0_combout\);

-- Location: LCFF_X37_Y16_N3
\mousectrl|hdata[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(5));

-- Location: LCCOMB_X38_Y16_N16
\mousectrl|ps2io|hdata[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|hdata[5]~feeder_combout\ = \mousectrl|hdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|hdata\(5),
	combout => \mousectrl|ps2io|hdata[5]~feeder_combout\);

-- Location: LCFF_X38_Y16_N17
\mousectrl|ps2io|hdata[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	datain => \mousectrl|ps2io|hdata[5]~feeder_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(5));

-- Location: LCFF_X37_Y16_N1
\mousectrl|hdata[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|hdata\(6));

-- Location: LCFF_X38_Y16_N31
\mousectrl|ps2io|hdata[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|sigsend~clkctrl_outclk\,
	sdata => \mousectrl|hdata\(6),
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|hdata\(6));

-- Location: LCCOMB_X38_Y16_N18
\mousectrl|ps2io|ps2_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~6_combout\ = \mousectrl|ps2io|hdata\(7) $ (\mousectrl|ps2io|hdata\(4) $ (\mousectrl|ps2io|hdata\(5) $ (\mousectrl|ps2io|hdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|hdata\(7),
	datab => \mousectrl|ps2io|hdata\(4),
	datac => \mousectrl|ps2io|hdata\(5),
	datad => \mousectrl|ps2io|hdata\(6),
	combout => \mousectrl|ps2io|ps2_data~6_combout\);

-- Location: LCCOMB_X38_Y16_N24
\mousectrl|ps2io|ps2_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~7_combout\ = \mousectrl|ps2io|hdata\(0) $ (\mousectrl|ps2io|hdata\(2) $ (\mousectrl|ps2io|hdata\(3) $ (\mousectrl|ps2io|hdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|hdata\(0),
	datab => \mousectrl|ps2io|hdata\(2),
	datac => \mousectrl|ps2io|hdata\(3),
	datad => \mousectrl|ps2io|hdata\(1),
	combout => \mousectrl|ps2io|ps2_data~7_combout\);

-- Location: LCCOMB_X37_Y16_N16
\mousectrl|ps2io|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal3~0_combout\ = (!\mousectrl|ps2io|TOPS2:count[0]~regout\ & (!\mousectrl|ps2io|TOPS2:count[2]~regout\ & (\mousectrl|ps2io|TOPS2:count[3]~regout\ & !\mousectrl|ps2io|TOPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|Equal3~0_combout\);

-- Location: LCCOMB_X38_Y16_N14
\mousectrl|ps2io|ps2_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~8_combout\ = (\mousectrl|ps2io|Equal3~0_combout\ & (\mousectrl|ps2io|ps2_data~6_combout\ $ (!\mousectrl|ps2io|ps2_data~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|ps2_data~6_combout\,
	datac => \mousectrl|ps2io|ps2_data~7_combout\,
	datad => \mousectrl|ps2io|Equal3~0_combout\,
	combout => \mousectrl|ps2io|ps2_data~8_combout\);

-- Location: LCCOMB_X38_Y16_N26
\mousectrl|ps2io|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Mux0~0_combout\ = (\mousectrl|ps2io|TOPS2:count[1]~regout\ & (((\mousectrl|ps2io|TOPS2:count[0]~regout\)))) # (!\mousectrl|ps2io|TOPS2:count[1]~regout\ & ((\mousectrl|ps2io|TOPS2:count[0]~regout\ & (\mousectrl|ps2io|hdata\(5))) # 
-- (!\mousectrl|ps2io|TOPS2:count[0]~regout\ & ((\mousectrl|ps2io|hdata\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|hdata\(5),
	datab => \mousectrl|ps2io|hdata\(4),
	datac => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	combout => \mousectrl|ps2io|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y16_N30
\mousectrl|ps2io|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Mux0~1_combout\ = (\mousectrl|ps2io|TOPS2:count[1]~regout\ & ((\mousectrl|ps2io|Mux0~0_combout\ & (\mousectrl|ps2io|hdata\(7))) # (!\mousectrl|ps2io|Mux0~0_combout\ & ((\mousectrl|ps2io|hdata\(6)))))) # 
-- (!\mousectrl|ps2io|TOPS2:count[1]~regout\ & (((\mousectrl|ps2io|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|hdata\(7),
	datab => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datac => \mousectrl|ps2io|hdata\(6),
	datad => \mousectrl|ps2io|Mux0~0_combout\,
	combout => \mousectrl|ps2io|Mux0~1_combout\);

-- Location: LCCOMB_X38_Y16_N12
\mousectrl|ps2io|ps2_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~12_combout\ = (\mousectrl|ps2io|ps2_data~11_combout\) # ((\mousectrl|ps2io|ps2_data~8_combout\) # ((\mousectrl|ps2io|TOPS2:count[2]~regout\ & \mousectrl|ps2io|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	datab => \mousectrl|ps2io|ps2_data~11_combout\,
	datac => \mousectrl|ps2io|ps2_data~8_combout\,
	datad => \mousectrl|ps2io|Mux0~1_combout\,
	combout => \mousectrl|ps2io|ps2_data~12_combout\);

-- Location: LCCOMB_X36_Y16_N8
\mousectrl|ps2io|ps2_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~13_combout\ = ((!\mousectrl|ps2io|TOPS2:count[2]~regout\ & ((!\mousectrl|ps2io|TOPS2:count[0]~regout\) # (!\mousectrl|ps2io|TOPS2:count[1]~regout\)))) # (!\mousectrl|ps2io|TOPS2:count[3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datab => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	datac => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	combout => \mousectrl|ps2io|ps2_data~13_combout\);

-- Location: LCCOMB_X36_Y16_N22
\mousectrl|ps2io|ps2_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~14_combout\ = (\mousectrl|ps2io|ps2_data~13_combout\ & (!\mousectrl|ps2io|sigclkreleased~regout\ & \mousectrl|ps2io|sigsending~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|ps2_data~13_combout\,
	datac => \mousectrl|ps2io|sigclkreleased~regout\,
	datad => \mousectrl|ps2io|sigsending~regout\,
	combout => \mousectrl|ps2io|ps2_data~14_combout\);

-- Location: LCFF_X38_Y16_N13
\mousectrl|ps2io|ps2_data~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|ps2_data~12_combout\,
	aclr => \mousectrl|ps2io|sigclkheld~regout\,
	ena => \mousectrl|ps2io|ps2_data~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|ps2_data~reg0_regout\);

-- Location: LCCOMB_X37_Y16_N22
\mousectrl|ps2io|ps2_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~1_combout\ = (\mousectrl|ps2io|TOPS2~0_combout\ & ((\mousectrl|ps2io|sigclkheld~regout\) # (\mousectrl|ps2io|ps2_data~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|sigclkheld~regout\,
	datac => \mousectrl|ps2io|TOPS2~0_combout\,
	datad => \mousectrl|ps2io|ps2_data~1_combout\,
	combout => \mousectrl|ps2io|ps2_data~1_combout\);

-- Location: LCCOMB_X36_Y16_N4
\mousectrl|ps2io|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|Equal5~0_combout\ = (\mousectrl|ps2io|TOPS2:count[3]~regout\ & !\mousectrl|ps2io|TOPS2:count[2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mousectrl|ps2io|TOPS2:count[3]~regout\,
	datad => \mousectrl|ps2io|TOPS2:count[2]~regout\,
	combout => \mousectrl|ps2io|Equal5~0_combout\);

-- Location: LCCOMB_X37_Y16_N30
\mousectrl|ps2io|ps2_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~3_combout\ = \mousectrl|ps2io|ps2_data~1_combout\ $ (((\mousectrl|ps2io|TOPS2:count[0]~regout\ $ (!\mousectrl|ps2io|TOPS2:count[1]~regout\)) # (!\mousectrl|ps2io|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|TOPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|ps2_data~1_combout\,
	datac => \mousectrl|ps2io|Equal5~0_combout\,
	datad => \mousectrl|ps2io|TOPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|ps2_data~3_combout\);

-- Location: LCCOMB_X37_Y16_N20
\mousectrl|ps2io|ps2_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~0_combout\ = (\mousectrl|ps2io|sigclkheld~regout\) # (!\mousectrl|ps2io|TOPS2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|ps2io|sigclkheld~regout\,
	datad => \mousectrl|ps2io|TOPS2~0_combout\,
	combout => \mousectrl|ps2io|ps2_data~0_combout\);

-- Location: LCFF_X37_Y16_N21
\mousectrl|ps2io|ps2_data~en_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|ps2_data~3_combout\,
	aclr => \mousectrl|ps2io|ps2_data~0_combout\,
	sload => VCC,
	ena => \mousectrl|ps2io|ps2_data~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|ps2_data~en_emulated_regout\);

-- Location: LCCOMB_X37_Y16_N10
\mousectrl|ps2io|ps2_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|ps2_data~2_combout\ = (\mousectrl|ps2io|TOPS2~0_combout\ & ((\mousectrl|ps2io|sigclkheld~regout\) # (\mousectrl|ps2io|ps2_data~1_combout\ $ (\mousectrl|ps2io|ps2_data~en_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|ps2_data~1_combout\,
	datab => \mousectrl|ps2io|sigclkheld~regout\,
	datac => \mousectrl|ps2io|TOPS2~0_combout\,
	datad => \mousectrl|ps2io|ps2_data~en_emulated_regout\,
	combout => \mousectrl|ps2io|ps2_data~2_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[0]~I\ : cycloneii_io
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
	padio => ww_CLOCK_24(0),
	combout => \CLOCK_24~combout\(0));

-- Location: CLKCTRL_G10
\CLOCK_24[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_24[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_24[0]~clkctrl_outclk\);

-- Location: LCFF_X35_Y16_N23
\mousectrl|ps2io|ps2_clk~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|ps2_clk~4_combout\,
	aclr => \mousectrl|ps2io|process_2~0_combout\,
	sload => VCC,
	ena => \mousectrl|ps2io|sigsending~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|ps2_clk~en_regout\);

-- Location: LCCOMB_X34_Y15_N6
\mousectrl|ps2io|sdata[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[3]~6_combout\ = (!\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (\mousectrl|ps2io|FROMPS2:count[2]~regout\ & (!\mousectrl|ps2io|sigsending~regout\ & !\mousectrl|ps2io|FROMPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datac => \mousectrl|ps2io|sigsending~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|sdata[3]~6_combout\);

-- Location: LCCOMB_X34_Y15_N30
\mousectrl|ps2io|sdata[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[3]~7_combout\ = (\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata[3]~6_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|sdata[3]~6_combout\ & ((\mousectrl|ps2io|sdata\(3)))))) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & 
-- (((\mousectrl|ps2io|sdata\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DAT~0\,
	datab => \mousectrl|ps2io|FROMPS2~0_combout\,
	datac => \mousectrl|ps2io|sdata\(3),
	datad => \mousectrl|ps2io|sdata[3]~6_combout\,
	combout => \mousectrl|ps2io|sdata[3]~7_combout\);

-- Location: LCFF_X34_Y15_N31
\mousectrl|ps2io|sdata[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[3]~7_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(3));

-- Location: LCCOMB_X34_Y15_N20
\mousectrl|ps2io|FROMPS2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|FROMPS2~3_combout\ = \mousectrl|ps2io|sdata\(4) $ (\mousectrl|ps2io|sdata\(5) $ (\mousectrl|ps2io|sdata\(3) $ (\mousectrl|ps2io|sdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata\(4),
	datab => \mousectrl|ps2io|sdata\(5),
	datac => \mousectrl|ps2io|sdata\(3),
	datad => \mousectrl|ps2io|sdata\(6),
	combout => \mousectrl|ps2io|FROMPS2~3_combout\);

-- Location: LCCOMB_X35_Y15_N18
\mousectrl|ps2io|sdata[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[0]~0_combout\ = (\mousectrl|ps2io|FROMPS2:count[0]~regout\ & (!\mousectrl|ps2io|sigsending~regout\ & (!\mousectrl|ps2io|FROMPS2:count[2]~regout\ & !\mousectrl|ps2io|FROMPS2:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datab => \mousectrl|ps2io|sigsending~regout\,
	datac => \mousectrl|ps2io|FROMPS2:count[2]~regout\,
	datad => \mousectrl|ps2io|FROMPS2:count[1]~regout\,
	combout => \mousectrl|ps2io|sdata[0]~0_combout\);

-- Location: LCCOMB_X35_Y15_N22
\mousectrl|ps2io|sdata[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|sdata[0]~1_combout\ = (\mousectrl|ps2io|sdata[0]~0_combout\ & ((\mousectrl|ps2io|FROMPS2~0_combout\ & (\PS2_DAT~0\)) # (!\mousectrl|ps2io|FROMPS2~0_combout\ & ((\mousectrl|ps2io|sdata\(0)))))) # (!\mousectrl|ps2io|sdata[0]~0_combout\ & 
-- (((\mousectrl|ps2io|sdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DAT~0\,
	datab => \mousectrl|ps2io|sdata[0]~0_combout\,
	datac => \mousectrl|ps2io|sdata\(0),
	datad => \mousectrl|ps2io|FROMPS2~0_combout\,
	combout => \mousectrl|ps2io|sdata[0]~1_combout\);

-- Location: LCFF_X35_Y15_N23
\mousectrl|ps2io|sdata[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|sdata[0]~1_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|sdata\(0));

-- Location: LCCOMB_X35_Y15_N28
\mousectrl|ps2io|FROMPS2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|FROMPS2~2_combout\ = \PS2_DAT~0\ $ (\mousectrl|ps2io|sdata\(2) $ (\mousectrl|ps2io|sdata\(0) $ (\mousectrl|ps2io|sdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_DAT~0\,
	datab => \mousectrl|ps2io|sdata\(2),
	datac => \mousectrl|ps2io|sdata\(0),
	datad => \mousectrl|ps2io|sdata\(1),
	combout => \mousectrl|ps2io|FROMPS2~2_combout\);

-- Location: LCCOMB_X34_Y15_N22
\mousectrl|ps2io|parchecked~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|parchecked~0_combout\ = \mousectrl|ps2io|sdata\(7) $ (\mousectrl|ps2io|FROMPS2~3_combout\ $ (\mousectrl|ps2io|FROMPS2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|sdata\(7),
	datac => \mousectrl|ps2io|FROMPS2~3_combout\,
	datad => \mousectrl|ps2io|FROMPS2~2_combout\,
	combout => \mousectrl|ps2io|parchecked~0_combout\);

-- Location: LCCOMB_X34_Y15_N16
\mousectrl|ps2io|parchecked~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ps2io|parchecked~2_combout\ = (\mousectrl|ps2io|parchecked~1_combout\ & (\mousectrl|ps2io|FROMPS2:count[0]~regout\ & ((\mousectrl|ps2io|parchecked~0_combout\)))) # (!\mousectrl|ps2io|parchecked~1_combout\ & 
-- (((\mousectrl|ps2io|parchecked~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|ps2io|parchecked~1_combout\,
	datab => \mousectrl|ps2io|FROMPS2:count[0]~regout\,
	datac => \mousectrl|ps2io|parchecked~regout\,
	datad => \mousectrl|ps2io|parchecked~0_combout\,
	combout => \mousectrl|ps2io|parchecked~2_combout\);

-- Location: LCFF_X34_Y15_N17
\mousectrl|ps2io|parchecked\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|sigtrigger~clkctrl_outclk\,
	datain => \mousectrl|ps2io|parchecked~2_combout\,
	aclr => \mousectrl|ps2io|FROMPS2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ps2io|parchecked~regout\);

-- Location: CLKCTRL_G4
\mousectrl|ps2io|parchecked~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mousectrl|ps2io|parchecked~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mousectrl|ps2io|parchecked~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y15_N6
\mousectrl|state.CLEAR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|state.CLEAR~0_combout\ = (\mousectrl|state.CLEAR~regout\) # ((\mousectrl|Selector11~0_combout\ & \mousectrl|state.NEXTCMD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|Selector11~0_combout\,
	datac => \mousectrl|state.CLEAR~regout\,
	datad => \mousectrl|state.NEXTCMD~regout\,
	combout => \mousectrl|state.CLEAR~0_combout\);

-- Location: LCFF_X37_Y15_N7
\mousectrl|state.CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|state.CLEAR~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|state.CLEAR~regout\);

-- Location: LCCOMB_X37_Y15_N12
\mousectrl|sigreseting~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|sigreseting~0_combout\ = !\mousectrl|state.CLEAR~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|state.CLEAR~regout\,
	combout => \mousectrl|sigreseting~0_combout\);

-- Location: LCFF_X37_Y15_N13
\mousectrl|sigreseting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|sigreseting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|sigreseting~regout\);

-- Location: LCCOMB_X37_Y15_N24
\mousectrl|sigwheel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|sigwheel~1_combout\ = (\mousectrl|sigwheel~0_combout\ & (!\mousectrl|Equal1~2_combout\ & ((\mousectrl|Equal2~0_combout\) # (\mousectrl|sigwheel~regout\)))) # (!\mousectrl|sigwheel~0_combout\ & (((\mousectrl|sigwheel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|sigwheel~0_combout\,
	datab => \mousectrl|Equal2~0_combout\,
	datac => \mousectrl|sigwheel~regout\,
	datad => \mousectrl|Equal1~2_combout\,
	combout => \mousectrl|sigwheel~1_combout\);

-- Location: LCFF_X37_Y15_N25
\mousectrl|sigwheel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_24[0]~clkctrl_outclk\,
	datain => \mousectrl|sigwheel~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|sigwheel~regout\);

-- Location: LCCOMB_X36_Y15_N20
\mousectrl|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|count~1_combout\ = (!\mousectrl|process_1:count[0]~regout\ & ((\mousectrl|sigwheel~regout\) # (!\mousectrl|process_1:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|process_1:count[1]~regout\,
	datac => \mousectrl|process_1:count[0]~regout\,
	datad => \mousectrl|sigwheel~regout\,
	combout => \mousectrl|count~1_combout\);

-- Location: LCFF_X36_Y15_N21
\mousectrl|process_1:count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	datain => \mousectrl|count~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ALT_INV_sigreseting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|process_1:count[0]~regout\);

-- Location: LCCOMB_X36_Y15_N24
\mousectrl|bt_on[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|bt_on[0]~0_combout\ = (!\mousectrl|process_1:count[1]~regout\ & (!\mousectrl|sigreseting~regout\ & !\mousectrl|process_1:count[0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|process_1:count[1]~regout\,
	datab => \mousectrl|sigreseting~regout\,
	datad => \mousectrl|process_1:count[0]~regout\,
	combout => \mousectrl|bt_on[0]~0_combout\);

-- Location: LCFF_X36_Y15_N25
\mousectrl|bt_on[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|bt_on[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|bt_on\(0));

-- Location: LCFF_X36_Y15_N23
\mousectrl|bt_on[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|bt_on[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|bt_on\(1));

-- Location: LCCOMB_X36_Y15_N12
\mousectrl|bt_on[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|bt_on[2]~feeder_combout\ = \mousectrl|ps2io|sdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|ps2io|sdata\(2),
	combout => \mousectrl|bt_on[2]~feeder_combout\);

-- Location: LCFF_X36_Y15_N13
\mousectrl|bt_on[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	datain => \mousectrl|bt_on[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|bt_on[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|bt_on\(2));

-- Location: LCCOMB_X36_Y15_N10
\mousectrl|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|count~0_combout\ = (\mousectrl|process_1:count[0]~regout\ & (!\mousectrl|process_1:count[1]~regout\)) # (!\mousectrl|process_1:count[0]~regout\ & (\mousectrl|process_1:count[1]~regout\ & \mousectrl|sigwheel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mousectrl|process_1:count[0]~regout\,
	datac => \mousectrl|process_1:count[1]~regout\,
	datad => \mousectrl|sigwheel~regout\,
	combout => \mousectrl|count~0_combout\);

-- Location: LCFF_X36_Y15_N11
\mousectrl|process_1:count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	datain => \mousectrl|count~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|ALT_INV_sigreseting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|process_1:count[1]~regout\);

-- Location: LCCOMB_X35_Y15_N30
\mousectrl|wheel[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|wheel[1]~0_combout\ = (!\mousectrl|sigreseting~regout\ & (\mousectrl|process_1:count[1]~regout\ & \mousectrl|process_1:count[0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|sigreseting~regout\,
	datab => \mousectrl|process_1:count[1]~regout\,
	datad => \mousectrl|process_1:count[0]~regout\,
	combout => \mousectrl|wheel[1]~0_combout\);

-- Location: LCFF_X35_Y15_N29
\mousectrl|wheel[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|wheel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|wheel\(0));

-- Location: LCFF_X35_Y15_N31
\mousectrl|wheel[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|wheel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|wheel\(1));

-- Location: LCFF_X34_Y15_N21
\mousectrl|wheel[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|wheel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|wheel\(3));

-- Location: LCFF_X35_Y15_N15
\mousectrl|wheel[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|wheel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|wheel\(2));

-- Location: LCCOMB_X35_Y15_N20
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\mousectrl|wheel\(0) & (\mousectrl|wheel\(1) & (\mousectrl|wheel\(3) & \mousectrl|wheel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|wheel\(0),
	datab => \mousectrl|wheel\(1),
	datac => \mousectrl|wheel\(3),
	datad => \mousectrl|wheel\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X35_Y15_N10
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\mousectrl|wheel\(0) & (!\mousectrl|wheel\(1) & (!\mousectrl|wheel\(3) & !\mousectrl|wheel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mousectrl|wheel\(0),
	datab => \mousectrl|wheel\(1),
	datac => \mousectrl|wheel\(3),
	datad => \mousectrl|wheel\(2),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X36_Y15_N27
\mousectrl|oy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	sdata => \mousectrl|ps2io|sdata\(7),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \mousectrl|bt_on[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|oy~regout\);

-- Location: LCCOMB_X36_Y15_N16
\mousectrl|ox~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mousectrl|ox~feeder_combout\ = \mousectrl|ps2io|sdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mousectrl|ps2io|sdata\(6),
	combout => \mousectrl|ox~feeder_combout\);

-- Location: LCFF_X36_Y15_N17
\mousectrl|ox\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mousectrl|ps2io|parchecked~clkctrl_outclk\,
	datain => \mousectrl|ox~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \mousectrl|bt_on[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mousectrl|ox~regout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[1]~I\ : cycloneii_io
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
	padio => ww_CLOCK_24(1));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(1));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mouse_buttons[0]~I\ : cycloneii_io
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
	datain => \mousectrl|bt_on\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mouse_buttons(0));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mouse_buttons[1]~I\ : cycloneii_io
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
	datain => \mousectrl|bt_on\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mouse_buttons(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mouse_buttons[2]~I\ : cycloneii_io
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
	datain => \mousectrl|bt_on\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mouse_buttons(2));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wheel_action[0]~I\ : cycloneii_io
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
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_wheel_action(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\wheel_action[1]~I\ : cycloneii_io
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
	padio => ww_wheel_action(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mousectrl|oy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \mousectrl|ox~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


