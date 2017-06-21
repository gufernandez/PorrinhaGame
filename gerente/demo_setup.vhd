library ieee;
library work;
use ieee.std_logic_1164.all;
use work.gerente_package.all;
use work.mouse_package.all;
use work.user_package.all;

entity demo_setup is
	port (GPIO_1IN 		: 		IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			GPIO_1OUT 		: 		OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
			SW					:		in		std_logic_vector(9 downto 0);
			CLOCK_50 		: 		in std_logic;
			CLOCK_24			: 		in	STD_LOGIC_VECTOR (1 downto 0);
			KEY 				:		in	STD_LOGIC_VECTOR (3 downto 0);
			LEDG				:		out	STD_LOGIC_VECTOR (7 downto 0);
			LEDR 				:		out	STD_LOGIC_VECTOR (9 downto 0);
			PS2_DAT 			:		inout	STD_LOGIC;	--	PS2 Data
			PS2_CLK			:		inout	STD_LOGIC		--	PS2 Clock
		);
end demo_setup;

architecture behavior of demo_setup is
	TYPE state_type is (NORMAL, AGUARDANDO);
	signal Choice, Guess, reset, En, Winner, Fim	:	std_logic;
	signal w, p2_Load	:	std_logic :='0';
	signal state : state_type;
	signal p2_Pal	:	std_logic_vector( 1 downto 0);
	signal p2_Guess	:	std_logic_vector( 2 downto 0);
	signal mouse_buttons	: std_logic_vector(2 downto 0);
	signal wheel_action, PlacarP1, PlacarP2	: std_logic_vector(1 downto 0);
begin	

	GPIO_1OUT(9) <= Fim;
	GPIO_1OUT(10) <= Winner;
	w <= Choice xor Guess;
	GPIO_1OUT(3 downto 2) <= PlacarP1;
	GPIO_1OUT(5 downto 4) <= PlacarP2;
	GPIO_1OUT(8 downto 6) <= p2_Guess;
	LEDG(4 downto 3) <= PlacarP2;
	LEDG(7) <= Choice;
	LEDG(6) <= Guess;
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
	
	gerente1 : gerente port map(KEY(1), CLOCK_50, GPIO_1IN(1 downto 0), p2_Pal, GPIO_1IN(2), p2_Load, GPIO_1IN(5 downto 3), p2_Guess, GPIO_1OUT(0), GPIO_1OUT(1), Choice, Guess,
										 PlacarP1, PlacarP2, Fim, Winner, LEDG(5));
										 
	this_user: user PORT MAP (Choice, Guess, En, '0', reset, GPIO_1IN(5 downto 3), wheel_action, mouse_buttons, LEDG(2 DOWNTO 0), p2_Pal, p2_Load, p2_Guess);
	
	--package gerente_package is
	--component gerente is
	--	port(
	--		Reset, Clock				:	in		std_logic;
	--		P1_Pal, P2_Pal				:	in 	std_logic_vector(1 downto 0);
	--		P1_Load, P2_Load			:	in 	std_logic;
	--		P1_Chute, P2_Chute		:	in 	std_logic_vector(2 downto 0);
	--		P1_Choice, P1_Guess, P2_Choice, P2_Guess	:	out std_logic;
	--		P1_Placar, P2_Placar		:	out	std_logic_vector(1 downto 0);
	--		Fim, Winner, FimFim		:	out	std_logic
			--P1_Clock, P2_Clock		: 	out	std_logic
	--	);
--end gerente_package;
end behavior;