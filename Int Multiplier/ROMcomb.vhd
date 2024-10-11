library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std .all;

entity ROMcomb is
	port(
		addr : in std_logic_vector(4 downto 0);
		q : out std_logic_vector(11 downto 0)
	);
end ROMcomb;

architecture memory of ROMcomb is

	subtype word_t is std_logic_vector(11 downto 0);
	type memory_t is array(0 to 31) of word_t;

	signal rom : memory_t := (
		"001100110110",
		"001100110110",
		"001100110110",
		"001100110110",
		"011000000100",
		"011000000100",
		"011000000100",
		"011000000100",
		"100000000000",
		"100000100000",
		"100000000000",
		"100000100000",
		"100000000000",
		"100000100000",
		"100000000000",
		"100000100000",
		"010011101100",
		"010011101100",
		"110000000001",
		"110000000001",
		"010011101100",
		"010011101100",
		"110000000001",
		"110000000001",
		"001100110110",
		"001100110110",
		"001100110110",
		"001100110110",
		"110000000001",
		"110000000001",
		"110000000001",
		"110000000001"
	);
begin

	q <= rom(to_integer(unsigned(addr)));
	
end memory;