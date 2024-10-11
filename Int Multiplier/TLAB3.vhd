LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity TLAB3 is

	port(
		Multiplicand: in std_logic_vector(3 downto 0);
		Multiplier: in std_logic_vector(3 downto 0);
		MCLK: in std_logic;
		Reset: in std_logic;
		Start: in std_logic;
		Ready: out std_logic;
		Product: out std_logic_vector(7 downto 0);
		HEX2, HEX1, HEX0: out std_logic_vector(7 downto 0)
	);
	
end TLAB3;

architecture arch_TLAB3 of TLAB3 is

	component DataPath
	port(
		multiplicand: in std_logic_vector(3 downto 0);
		multiplier: in std_logic_vector(3 downto 0);
		CLK: in std_logic;
		reset_counter: in std_logic;
		enable_counter: in std_logic;
		enable_reg: in std_logic;
		shiftwrite_a: in std_logic;
		shiftwrite_m: in std_logic;
		enable_a: in std_logic;
		enable_m: in std_logic;
		clear: in std_logic;
		clear_decoder: in std_logic;
		TC: out std_logic;
		shift_out: out std_logic;
		product: out std_logic_vector(7 downto 0);
		HEX0, HEX1, HEX2: out std_logic_vector (7 downto 0)
	);
	end component;
	
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
	
	component Controlo
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
	
	signal TC_dp, shift_out_dp, enable_reg_dp, reset_counter_dp, enable_counter_dp, shiftwrite_a_dp, enable_a_dp, clear_dp, shiftwrite_m_dp, enable_m_dp, clear_decoder_dp, rdy : std_logic;
	signal x0, x1, x2, P : std_logic_vector(7 downto 0);
		
	
	begin
	
	inst_asm: Controlo -- Usar ASM ou usar Controlo.
	port map (
		Start => Start,
		Rst => Reset,
		MCLK => MCLK,
		TC => TC_dp,
		shift_out => shift_out_dp,
		enable_reg => enable_reg_dp,
		reset_counter => reset_counter_dp,
		enable_counter => enable_counter_dp,
		shiftwrite_a => shiftwrite_a_dp,
		enable_a => enable_a_dp,
		clear => clear_dp,
		shiftwrite_m => shiftwrite_m_dp,
		enable_m => enable_m_dp,
		clear_decoder => clear_decoder_dp,
		Ready => rdy
	);
	
	inst_DataPath: DataPath
	port map (
		multiplicand => multiplicand,
		multiplier => multiplier,
		CLK => MCLK,
		reset_counter => reset_counter_dp,
		enable_counter => enable_counter_dp,
		enable_reg => enable_reg_dp,
		shiftwrite_a => shiftwrite_a_dp,
		shiftwrite_m => shiftwrite_m_dp,
		enable_a => enable_a_dp,
		enable_m => enable_m_dp,
		clear => clear_dp,
		clear_decoder => clear_decoder_dp,
		TC => TC_dp,
		shift_out => shift_out_dp,
		product => P,
		HEX0 => x0,
		HEX1 => x1,
		HEX2 => x2
	);

Ready <= rdy;
Product <= P;
HEX0 <= x0;
HEX1 <= x1;
HEX2 <= x2;

end arch_TLAB3;