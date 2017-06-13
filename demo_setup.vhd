library ieee;
library work;
use ieee.std_logic_1164.all;
use work.porrinha_user_package.all;

entity demo_setup is
	port (GPIO_0IN : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
			GPIO_0OUT : OUT STD_LOGIC_VECTOR(17 DOWNTO 13);
			CLOCK_50 : in std_logic);
end demo_setup;

architecture behavior of demo_setup is
begin
	this_user: porrinha_user PORT MAP (GPIO_0IN(0), GPIO_0IN(1), GPIO_0IN(2), GPIO_0IN(3), GPIO_0IN(4), GPIO_0IN(5), GPIO_0IN(12 downto 10),
									  GPIO_0IN(7 downto 6), GPIO_0IN(9 downto 8), GPIO_0OUT(17 downto 16), GPIO_0OUT(15 downto 13));
	
end behavior;