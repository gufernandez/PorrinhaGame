library ieee;
--library work;
library work;
use ieee.std_logic_1164.all;
use work.mouse_package.all;
use work.user_package.all;

entity demo_setup is
-- winner: define o vencedor da rodada
	port (GPIO_0IN : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
			GPIO_0OUT : OUT STD_LOGIC_VECTOR(17 DOWNTO 13);
			CLOCK_50 : in std_logic;
			------------------------	Clock Input	 	------------------------
			CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);	--	24 MHz
		
			------------------------	Push Button		------------------------
			KEY 	:		in	STD_LOGIC_VECTOR (3 downto 0);		--	Pushbutton[3:0]
		
			----------------------------	LED		----------------------------
			LEDG				:		out	STD_LOGIC_VECTOR (7 downto 0);
			--mouse_buttons 	:		out	STD_LOGIC_VECTOR (2 downto 0);
			--wheel_action	:		out	STD_LOGIC_VECTOR (1 downto 0);
			LEDR 	:		out	STD_LOGIC_VECTOR (9 downto 0);		--	LED Red[9:0]
					
			------------------------	PS2		--------------------------------
			PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
			PS2_CLK		:		inout	STD_LOGIC		--	PS2 Clock
		);
end demo_setup;

architecture behavior of demo_setup is
	signal mouse_buttons	: std_logic_vector(2 downto 0);
	signal wheel_action	: std_logic_vector(1 downto 0);
begin
	mouse1 : mouse port map(CLOCK_24, KEY, mouse_buttons, wheel_action, LEDR, PS2_DAT, PS2_CLK);

	this_user: user PORT MAP ('0', '1', GPIO_0IN(2), GPIO_0IN(3), GPIO_0IN(4), "110", wheel_action, mouse_buttons, LEDG(2 DOWNTO 0),
									  GPIO_0OUT(17 downto 16), LEDG(5),GPIO_0OUT(15 downto 13));
	
end behavior;