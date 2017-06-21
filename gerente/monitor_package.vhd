LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE monitor_package IS
	COMPONENT monitor IS
			PORT (
			score_en				:IN STD_LOGIC;
			score1, score2		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			display_number		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			display_screen		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			
			clk27M				: IN STD_LOGIC;
			reset					: IN STD_LOGIC;
			VGA_R, VGA_G, VGA_B	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			VGA_HS, VGA_VS		: OUT STD_LOGIC
		);
	END COMPONENT;
END monitor_package;
