library ieee;
--library work;
library work;
use ieee.std_logic_1164.all;
use work.mouse_package.all;
use work.user_package.all;

entity demo_setup is
-- winner: define o vencedor da rodada
	port (GPIO_1IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			GPIO_1OUT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
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
	TYPE state_type is (NORMAL, AGUARDANDO);
	signal Choice, Guess, reset, En, Winner, Fim	:	std_logic;
	signal w	:	std_logic :='0';
	signal state : state_type;
	signal mouse_buttons	: std_logic_vector(2 downto 0);
	signal wheel_action, Placar	: std_logic_vector(1 downto 0);
begin
	Choice <= GPIO_1IN(0);
	Guess <= GPIO_1IN(1);
	Placar <= GPIO_1IN(3 downto 2);
	Fim <= GPIO_1IN(4);
	Winner <= GPIO_1IN(5);
	w <= Choice xor Guess;
	LEDG(7) <= GPIO_1IN(0);
	LEDG(6) <= GPIO_1IN(1);
	process(Clock_50)
	begin
		case state is
			when NORMAL =>
				if w = '0' then
					state <= AGUARDANDO;
				end if;
			when AGUARDANDO =>
				if w = '1' then
					state <= NORMAL;
				end if;
		end case;
	end process;
	
	process(state)
	begin
		IF(state = NORMAL) THEN
			reset <= '1';
			En <= '1';
		ELSE
			reset <= '0';
			En <= '0';
		END IF;
	end process;
	
	mouse1 : mouse port map(CLOCK_24, KEY, mouse_buttons, wheel_action, LEDR, PS2_DAT, PS2_CLK);

	this_user: user PORT MAP (Choice, Guess, En, '0', reset, "000", wheel_action, mouse_buttons, LEDG(2 DOWNTO 0),
									  GPIO_1OUT(1 downto 0), GPIO_1OUT(2), GPIO_1OUT(5 downto 3));
	
end behavior;