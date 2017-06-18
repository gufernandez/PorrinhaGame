library ieee;
library work;
use ieee.std_logic_1164.all;
use work.gerente_package.all;

entity demo_setup is
	port (GPIO_0IN, GPIO_1IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			GPIO_0OUT, GPIO_1OUT : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
			SW		:		in		std_logic_vector(9 downto 0);
			CLOCK_50 : in std_logic;
			CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);
			KEY 	:		in	STD_LOGIC_VECTOR (3 downto 0);
			LEDG				:		out	STD_LOGIC_VECTOR (7 downto 0);
			LEDR 	:		out	STD_LOGIC_VECTOR (9 downto 0)
		);
end demo_setup;

architecture behavior of demo_setup is
begin	

	LEDR(5) <= GPIO_1IN(2);
	gerente1 : gerente port map(KEY(0), CLOCK_50, GPIO_1IN(1 downto 0), SW(4 downto 3), GPIO_1IN(2), KEY(2), GPIO_1IN(5 downto 3), SW(2 downto 0), GPIO_1OUT(0), GPIO_1OUT(1), LEDG(7), LEDG(6),
										 GPIO_1OUT(3 downto 2), LEDR(9 downto 8), GPIO_1OUT(4), GPIO_1OUT(5), LEDR(3));
	
	
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