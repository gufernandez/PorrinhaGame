LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

PACKAGE user_package IS
COMPONENT  user IS
-- Choice: define se é a vez de escolha do usuário
-- Guess: define se é a vez de chute do usuário
-- Fim: define se a rodada acabou
-- FimFim: define se o jogo acabou
-- clk: sinal de clock
-- guess_opt: dá o valor do chute do oponente (0 a 6)
-- P1 e P2: pontos dos jogadores (0 a 3)
-- pal: palitos colocados pelo jogadores (0 a 3)
-- guess_user: chute do usuário da placa (0 a 6)

	PORT (Choice, Guess, En, clk: IN STD_LOGIC;
			guess_opt: IN STD_LOGIC_VECTOR(2 downto 0);
			wheel_action: IN STD_LOGIC_VECTOR(1 downto 0);
			mouse_buttons: IN STD_LOGIC_VECTOR(2 downto 0);
			--P1, P2: IN STD_LOGIC_VECTOR(1 downto 0); N~ao faz mais sentido?
			numero: OUT STD_LOGIC_VECTOR(2 downto 0);
			pal: OUT STD_LOGIC_VECTOR(1 downto 0);
			ld_output : BUFFER STD_LOGIC;
			guess_user: OUT STD_LOGIC_VECTOR(2 downto 0));
END COMPONENT;
END user_package;