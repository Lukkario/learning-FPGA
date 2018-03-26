library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mryganie_led is
	Port(
	Clk : in STD_LOGIC;
	LED : out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end mryganie_led;

architecture Behavioral of mryganie_led is
	constant LICZNIK_LIMIT : integer := 5000000;
	signal licznik : unsigned(24 downto 0);
	signal mryganie : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
begin
process(Clk)
	begin
		if rising_edge(Clk) then
			if licznik = LICZNIK_LIMIT then
				licznik <= b"0000000000000000000000000";
				mryganie <= not mryganie;
			else
				licznik <= licznik + 1;
			end if;
		end if;
end process;
LED <= mryganie;

end Behavioral;

