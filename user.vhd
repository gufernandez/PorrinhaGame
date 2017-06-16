LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  user IS
-- Choice: define se é a vez de escolha do usuário
-- Guess: define se é a vez de chute do usuário
-- Fim: define se a rodada acabou
-- FimFim: define se o jogo acabou
-- clk: sinal de clock
-- guess_opt: dá o valor do chute do oponente (0 a 6)
-- pal: palitos colocados pelo jogadores (0 a 3)
-- guess_user: chute do usuário da placa (0 a 6)

	PORT (Choice, Guess, En, clk, Reset: IN STD_LOGIC;
			guess_opt: IN STD_LOGIC_VECTOR(2 downto 0);
			wheel_action: IN STD_LOGIC_VECTOR(1 downto 0);
			mouse_buttons: IN STD_LOGIC_VECTOR(2 downto 0);
			numero: OUT STD_LOGIC_VECTOR(2 downto 0);
			pal: OUT STD_LOGIC_VECTOR(1 downto 0);
			ld_output : BUFFER STD_LOGIC := '0';
			guess_user: OUT STD_LOGIC_VECTOR(2 downto 0));
END user;

architecture behavior of user is
	signal wheel_up, wheel_down, wheel_clock : std_logic;
	signal aux	: STD_LOGIC_VECTOR(2 downto 0);
	shared variable contagem		:	integer range 0 to 6 :=0;
	shared variable guess_opt2	:	integer range 0 to 6 := 0;
begin
	wheel_up<= wheel_action(0);
	wheel_down<= wheel_action(1);
	wheel_clock <= wheel_up xor wheel_down;
	
	process(Choice, Guess, wheel_clock, wheel_up, wheel_down, guess_opt, En, ld_output)
	begin
		if(Reset = '0') then
			contagem := 0;
		else
			if(En = '1') then
				guess_opt2 := conv_integer(unsigned(guess_opt));
				if(Choice = '1' or Guess = '1') then
					if(wheel_clock'event and wheel_clock = '1') then
						if(wheel_up = '1') then
							if contagem = 6 then
								if(guess_opt2 = 0) and Guess = '1'then
									contagem := 1;
								else
									contagem := 0;
								end if;
							elsif contagem = 3 and Choice = '1' then
								contagem := 0;
							else
								if(guess_opt2 = contagem + 1) and Guess = '1' then
									if(contagem = 5) then
										contagem := 0;
									else
										contagem := contagem + 2;
									end if;
								else
									contagem := contagem + 1;
								end if;
							end if;
						elsif(wheel_down = '1') then
							if contagem = 0 and Choice = '1' then
								contagem := 3;
							elsif contagem = 0 then
								if(guess_opt2 = 6) and Guess = '1'then
									contagem := 5;
								else
									contagem := 6;
								end if;
							else
								if(guess_opt2 = contagem - 1) and Guess = '1'then
									if(contagem = 1) then
										contagem := 6;
									else
										contagem := contagem - 2;
									end if;
								else
									contagem := contagem - 1;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
			aux <= conv_std_logic_vector(contagem, 3);
			numero <= conv_std_logic_vector(contagem, 3);
		end if;
	end process;
	
	process(mouse_buttons, En, Choice, Guess, ld_output)
	begin
		if(Reset = '0') then
			ld_output <= '0';
		else
			if(En = '1') then
				if(mouse_buttons(0)'event and mouse_buttons(0) = '1') then
					if Choice = '1' then
						ld_output <= '1';
						pal <= aux(1 downto 0);
					elsif (Guess = '1' and (contagem /= guess_opt2)) then
						guess_user <= aux;
						ld_output <= '1';
					end if;
				end if;
			end if;
		end if;
	end process;
end behavior;
