LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ASM is
	port (
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
end ASM;


architecture logicFunction of ASM is

	component FFD
		port (
			CLK: in std_logic;
			RESET: in std_logic;
			D: in std_logic;
			EN: in std_logic;
			Q: out std_logic
		);
	end component;
	
	signal D0, D1, Q0, Q1 : std_logic;
	
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
	
	D1 <= (not Q1 and Q0) or (Q1 and Q0 and Start) or (Q1 and not Q0 and TC);
	D0 <= (Q1 and Start) or (not Q0 and Start) or (Q1 and not Q0);
	
	enable_reg <= (not Q1 and not Q0) or (Q1 and Q0);
	reset_counter <= (not Q1 and not Q0) or (Q1 and Q0);
	enable_counter <= (Q1 and not Q0);
	shiftwrite_a <= (Q1 and not Q0);
	enable_a <= (not Q1 and not Q0 and not Start) or (not Q1 and Q0 and shift_out) or (Q1 and not Q0 and not TC) or (Q1 and Q0 and not Start);
	clear <= (not Q1 and not Q0 and not Start) or (Q1 and Q0 and not Start);
	shiftwrite_m <= (Q1 and not Q0 and not Tc);
	enable_m <= (not Q1 and not Q0) or (Q1 and not Q0 and not TC) or (Q1 and Q0 and not Start);
	clear_decoder <= (not Q1 and not Q0 and not Start) or (Q1 and Q0 and not Start);
	Ready <= (Q1 and not Q0 and TC) or (Q1 and Q0 and Start);
	
end logicFunction;
	
	