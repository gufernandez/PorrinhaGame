LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE porrinha_user_package IS
COMPONENT  porrinha_user
	PORT (Choice, Guess, Fim, FimFim, winner, clk: IN STD_LOGIC;
			guess_opt: IN STD_LOGIC_VECTOR(2 downto 0);
			P1, P2: IN STD_LOGIC_VECTOR(1 downto 0);
			pal: OUT STD_LOGIC_VECTOR(1 downto 0);
			guess_user: OUT STD_LOGIC_VECTOR(2 downto 0));
END COMPONENT;
END porrinha_user_package;