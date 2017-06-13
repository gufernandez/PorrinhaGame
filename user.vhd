LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY  porrinha_user IS
-- Choice: define se é a vez de escolha do usuário
-- Guess: define se é a vez de chute do usuário
-- Fim: define se a rodada acabou
-- FimFim: define se o jogo acabou
-- winner: define o vencedor da rodada
-- clk: sinal de clock
-- guess_opt: dá o valor do chute do oponente (0 a 9)
-- P1 e P2: pontos dos jogadores (0 a 3)
-- pal: palitos colocados pelo jogadores (0 a 3)
-- guess_user: chute do usuário da placa (0 a 9)

	PORT (Choice, Guess, Fim, FimFim, winner, clk: IN STD_LOGIC;
			guess_opt: IN STD_LOGIC_VECTOR(2 downto 0);
			P1, P2: IN STD_LOGIC_VECTOR(1 downto 0);
			pal: OUT STD_LOGIC_VECTOR(1 downto 0);
			guess_user: OUT STD_LOGIC_VECTOR(2 downto 0));
END porrinha_user;

architecture behavior of porrinha_user is

begin

	process(Choice, Guess, Fim, clk, P1, P2, guess_opt)
	begin
		--if (clk'event and clk = '1') then -- Precisa?
			if ((Choice = '0') and (Guess = '0') and (Fim = '0')) then
				--monitor.wait();
			elsif (Choice = '1') then
				--monitor.choice(pal);
			elsif (Guess = '1') then
				--monitor.guess(guess_opt, guess_user);
			elsif (Fim = '1') then
				--monitor.finish(winner, P1, P2);
			elsif (FimFim = '1') then
				--monitor.gameover(winner, P1, P2);
			end if;
	end process;
		--end if;
end behavior;
