library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplex is
	Port(
	Switch	: in STD_LOGIC_VECTOR(3 downto 0);
	DPSwitch	: in STD_LOGIC_VECTOR(1 downto 0);
	LED		: out STD_LOGIC_VECTOR(0 downto 0)
	);
end multiplex;

architecture Behavioral of multiplex is
	signal szyna_buforowa_wejsc	: STD_LOGIC_VECTOR(3 downto 0);
	signal szyna_buforowa_adresow	: STD_LOGIC_VECTOR(1 downto 0);
begin
	with szyna_buforowa_adresow select
		LED(0) <= szyna_buforowa_wejsc(0) when "00",
					szyna_buforowa_wejsc(1) when "01",
					szyna_buforowa_wejsc(2) when "10",
					szyna_buforowa_wejsc(3) when others;
szyna_buforowa_wejsc <= not Switch;
szyna_buforowa_adresow <= not DPSwitch;
end Behavioral;

