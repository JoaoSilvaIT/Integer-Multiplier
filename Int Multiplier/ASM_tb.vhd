library IEEE;
use IEEE.std_logic_1164.all;

entity ASM_tb is
end entity;

architecture ASM_tb_arc of ASM_tb is

component ASM
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
end component;

-- UUT signals
signal RESET_TB, MCLK_TB : std_logic := '0';
signal Start_TB, Rst_TB, TC_TB, shift_out_TB, enable_reg_TB, reset_counter_TB, enable_counter_TB, shiftwrite_a_TB, enable_a_TB, clear_TB, shiftwrite_m_TB, enable_m_TB, clear_decoder_TB, Ready_TB : std_logic;

constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
constant CLK_PERIOD : time := 20 ns;

begin

	MCLK_TB <= not MCLK_TB after MCLK_HALF_PERIOD;
	
	UUT: ASM
	port map(
		Start => Start_TB,
		Rst => Rst_TB,
		MCLK => MCLK_TB,
		TC => TC_TB,
		shift_out => shift_out_TB,
		enable_reg => enable_reg_TB,
		reset_counter => reset_counter_TB,
		enable_counter => enable_counter_TB,
		shiftwrite_a => shiftwrite_a_TB,
		enable_a => enable_a_TB,
		clear => clear_TB,
		shiftwrite_m => shiftwrite_m_TB,
		enable_m => enable_m_TB,
		clear_decoder => clear_decoder_TB,
		Ready => Ready_TB
	);
	
stimulus: process 
begin

	TC_TB <= '0';
	shift_out_TB <= '0';
	Start_TB <= '0';
	Rst_Tb <= '1';
	
	wait for CLK_PERIOD;
	
	Rst_TB <= '0';
	Start_TB <= '1';
	
	wait for CLK_PERIOD;
	
	Start_TB <= '0';
	shift_out_TB <= '1';
	
	wait for CLK_PERIOD;
	
	shift_out_TB <= '0';
	TC_TB <= '0';
		wait for CLK_PERIOD;
	
	shift_out_TB <= '0';
	
	wait for CLK_PERIOD;
	
	TC_TB <= '1';
	
	wait for CLK_PERIOD;
	
	Start_TB <= '0';
	
	wait for CLK_PERIOD;
	
	Start_TB <= '1';
	
	wait for CLK_PERIOD;
		
end process;

end architecture;