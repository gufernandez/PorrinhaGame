library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity gerente is
	port(
		Reset, Clock				:	in		std_logic;
		P1_Pal, P2_Pal				:	in 	std_logic_vector(1 downto 0);
		P1_Load, P2_Load			:	in 	std_logic;
		P1_Chute, P2_Chute		:	in 	std_logic_vector(2 downto 0);
		P1_Choice, P1_Guess, P2_Choice, P2_Guess	:	out std_logic;
		P1_Placar, P2_Placar		:	out	std_logic_vector(1 downto 0);
		Fim, Winner, FimFim		:	out	std_logic
	);
end gerente;

architecture behavior of gerente is
	type state_type is (P1_Vez1, P2_Vez1, P1_Vez2, P2_Vez2, Placar, Final);
	signal state	:	state_type := P1_Vez1;
begin
	P1_Choice	<= '1' WHEN state = P1_Vez1 ELSE	'0';
	P1_Guess		<=	'1' WHEN state = P1_Vez2 ELSE	'0';
	P2_Choice	<=	'1' WHEN state = P2_Vez1 ELSE	'0';
	P2_Guess		<=	'1' WHEN state = P2_Vez2 ELSE	'0';
	process(Clock, Reset)
		variable P1p, P2p, P1_point, P2_point : std_logic_vector(1 downto 0):="00";
		variable P1g, P2g, Total : std_logic_vector(2 downto 0) := "000";
	begin
		if(Reset = '0') then
			state <= P1_Vez1;
			P1p := (others => '0');
			P1g := (others => '0');
			P2p := (others => '0');
			P2g := (others => '0');
			P1_point := (others => '0');
			P2_point := (others => '0');
			Total := (others => '0');
			Winner <= '0';
			P1_Placar<=P1_point;
			P2_Placar<=P2_point;
		elsif(Clock'event and  Clock = '1') then
			case state is
				when P1_Vez1 =>			
					if P1_Load = '1' then
						P1p := P1_Pal;
						state <= P2_Vez1;
					end if;	
					
				when P2_Vez1 =>			
					if P2_Load = '1' then
						P2p := P2_Pal;
						state <= P1_Vez2;
					end if;
				
				when P1_Vez2 =>		
					if P1_Load = '1' then
						P1g := P1_Chute;
						state <= P2_Vez2;
					end if;
					
				when P2_Vez2 =>
					if P2_Load = '1' then
						P2g := P2_Chute;
						state <= Placar;						
					end if;
						
				when Placar =>
					Total := ('0' & P1p) + ('0' & P2p);
					if(P1g = Total) then
						P1_point := P1_point + '1';
					elsif(P2g = Total) then
						P2_point	:=	P2_point	+ '1';
					end if;
					
					if(P1_point = "11" or P2_point = "11") then
						state <= Final;
					else
						state <= P1_Vez1;
					end if;
					P1_Placar<=P1_point;
					P2_Placar<=P2_point;

				when Final =>
					if P1_point > P2_point then
						Winner <= '1';
					else
						Winner <= '0';
					end if;
			end case;
		end if;
	end process;
end behavior;