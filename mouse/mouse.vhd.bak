LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity mouse is
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
end;

architecture struct of mouse is
	component mouse_ctrl
		generic(
			clkfreq : integer
		);
		port(
			ps2_data	:	inout	std_logic;
			ps2_clk		:	inout	std_logic;
			clk				:	in 	std_logic;
			en				:	in 	std_logic;
			resetn		:	in 	std_logic;
			newdata		:	out	std_logic;
			bt_on			:	out	std_logic_vector(2 downto 0);
			ox, oy		:	out std_logic;
			dx, dy		:	out	std_logic_vector(8 downto 0);
			wheel			: out	std_logic_vector(3 downto 0)
		);
	end component;
	
	signal signewdata, resetn	:	std_logic;
	signal dx, dy 				 	:	std_logic_vector(8 downto 0);
	signal wheel					:	std_logic_vector(3 downto 0);
	
begin 
	
	mousectrl : mouse_ctrl generic map (24000) port map(
		PS2_DAT, PS2_CLK, CLOCK_24(0), '1', KEY(0),
		signewdata, mouse_buttons, LEDR(9), LEDR(7), dx, dy, wheel);
		
	with wheel select
		wheel_action <= "01" when "1111",
							 "10" when "0001",
							 "00" when others;
end struct;
