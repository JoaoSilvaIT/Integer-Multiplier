library IEEE;
use IEEE.std_logic_1164.all;

entity Controlo is
	port(
		Start : in STD_LOGIC;
		Rst: in std_logic;
		MCLK: in std_logic;
		TC: in std_logic;
		shift_out: in std_logic;
		enable_reg: out std_logic;
		reset_counter: out std_logic;
		enable_counter: out std_logic;
		shiftwrite_a: out std_logic;
		enable_a: out std_logic;
		clear: out std_logic;
		shiftwrite_m: out std_logic;
		enable_m: out std_logic;
		clear_decoder: out std_logic;
		Ready: out std_logic
	);
end Controlo;

architecture logicFunction of Controlo is

	component FFD
		port(
			CLK : in std_logic;
			RESET : in std_logic;
			D : in std_logic;
			EN : in std_logic;
			Q : out std_logic
		);
	end component;

	component ROMcomb
		port (
			addr : in std_logic_vector(4 downto 0);
			q : out std_logic_vector(11 downto 0)
		);
	end component;

	signal D0, D1, Q0, Q1 : std_logic;
	signal romOut : std_logic_vector(11 downto 0);
	signal ROMaddr : std_logic_vector(4 downto 0);

begin

	U0: FFD
	port map (
		CLK => MCLK,
		RESET => Rst,
		D => D0,
		EN => '1',
		Q => Q0
	);

	U1: FFD
	port map (
		CLK => MCLK,
		RESET => Rst,
		D => D1,
		EN => '1',
		Q => Q1
	);
	
	ROMaddr(4) <= Q1;
	ROMaddr(3) <= Q0;
	ROMaddr(2) <= Start;
	ROMaddr(1) <= TC;
	ROMaddr(0) <= shift_out;
	
	U2: ROMcomb port map(ROMaddr, romOut);
	
	D1 <= romOut(11);
	D0 <= romOut(10);
	
	enable_reg <= romOut(9);
	reset_counter <= romOut(8);
	enable_counter <= romOut(7);
	shiftwrite_a <= romOut(6);
	enable_a <= romOut(5);
	clear <= romOut(4);
	shiftwrite_m <= romOut(3);
	enable_m <= romOut(2);
	clear_decoder <= romOut(1);
	Ready <= romOut(0);

end LogicFunction;