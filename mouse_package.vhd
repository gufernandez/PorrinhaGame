LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

package mouse_package is
	component mouse is
		port
		(
			------------------------	Clock Input	 	------------------------
			CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);	--	24 MHz
			
			------------------------	Push Button		------------------------
			KEY 	:		in	STD_LOGIC_VECTOR (3 downto 0);		--	Pushbutton[3:0]
			
			----------------------------	LED		----------------------------
			mouse_buttons 	:		out	STD_LOGIC_VECTOR (2 downto 0);
			wheel_action	:		out	STD_LOGIC_VECTOR (1 downto 0);
			LEDR 	:		out	STD_LOGIC_VECTOR (9 downto 0);		--	LED Red[9:0]
						
			------------------------	PS2		--------------------------------
			PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
			PS2_CLK		:		inout	STD_LOGIC		--	PS2 Clock
		);
	end component;
end mouse_package;