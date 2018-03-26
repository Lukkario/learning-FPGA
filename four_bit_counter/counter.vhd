library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
	Port(
	Clk: in STD_LOGIC;
	LED: out STD_LOGIC_VECTOR(3 downto 0)
	);
end counter;

architecture Behavioral of counter is
	signal temp: STD_LOGIC_VECTOR(3 downto 0) := "0000";
	constant LIMIT : integer := 5000000;
	signal licznik : unsigned(24 downto 0);
begin
	process(Clk)
	begin
		if rising_edge(Clk) then
			if licznik = LIMIT then
				licznik <= b"0000000000000000000000000";
				if temp = "1111" then
					temp <= "0000";
				else
					temp <= temp + 1;
				end if;
			else
				licznik <= licznik + 1;
			end if;
		end if;
	end process;
	LED <= temp;
end Behavioral;

