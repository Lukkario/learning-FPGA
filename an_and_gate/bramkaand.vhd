library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bramkaand is
	Port(
	Switch : in STD_LOGIC_VECTOR(1 downto 0);
	LED : out STD_LOGIC_VECTOR(0 downto 0)
	);
end bramkaand;

architecture Behavioral of bramkaand is

begin
LED(0) <= (not Switch(0)) and (not Switch(1));
--LED(1) <= Switch(2);

end Behavioral;

