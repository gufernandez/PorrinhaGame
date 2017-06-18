library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

package gerente_package is
	component gerente is
		port(
			Reset, Clock				:	in		std_logic;
			P1_Pal, P2_Pal				:	in 	std_logic_vector(1 downto 0);
			P1_Load, P2_Load			:	in 	std_logic;
			P1_Chute, P2_Chute		:	in 	std_logic_vector(2 downto 0);
			P1_Choice, P1_Guess, P2_Choice, P2_Guess	:	out std_logic;
			P1_Placar, P2_Placar		:	out	std_logic_vector(1 downto 0);
			Fim, Winner, FimFim		:	out	std_logic
			--P1_Clock, P2_Clock		: 	out	std_logic
		);
	end component;
end gerente_package;