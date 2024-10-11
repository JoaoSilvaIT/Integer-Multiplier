LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DataPath is

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
	
end DataPath;

architecture arch_DataPath of DataPath is

	component reg 
	port ( 
		CLK : in std_logic;
		RESET : in std_logic;
		D : in std_logic_vector(3 downto 0);
		EN : in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
	end component;
	
	component CounterUp
	port (
		CE : in std_logic;
		CLK : in std_logic; 
		RESET : in std_logic;
		TC: out std_logic
	);
	end component;
	
	component ShiftRegister 
	port ( 
		Sin: in std_logic;
		Sout: out std_logiC;
		Spl: in std_logic;
		E : in std_logic;
		Clk: in std_logic;
		Clr: in std_logic;
		R: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component ADDER
	port (
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		C0 : in std_logic;
		S: out std_logic_vector(3 downto 0);
		C4: out std_logic
	);
	end component;
	
	component FFD
	port (
		CLK : in std_logic;
		RESET : in STD_LOGIC;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
	);
	end component;
	
	component MUX_1
	port (
		A : in std_logic;
		B : in std_logic;
		S: in std_logic;
		Sout : out STD_LOGIC
	);
	end component;
	
	component decoderHex
	port (
		bin: in std_logic_vector(7 downto 0);		
		clear : in std_logic;
		HEX0 : out std_logic_vector(7 downto 0);
		HEX1 : out std_logic_vector(7 downto 0);
		HEX2 : out std_logic_vector(7 downto 0)
	);		
	end component;

Signal Decoder_in : std_logic_vector(7 downto 0);
Signal reg_out, A_reg, S, Decoder, F1, F2 : std_logic_vector(3 downto 0);
signal c_out, D, Q, Sin : std_logic;
	
begin

	inst_counter: CounterUp
	port map (
		CE => enable_counter,
		CLK => CLK,
		RESET => reset_counter,
		TC => TC
	);

	inst_reg: reg
	port map (
		CLK => CLK,
		RESET => clear,
		D => multiplicand,
		EN => enable_reg,
		Q => reg_out
	);
	
	inst_adder: ADDER
	port map (
		A => F1,
		B => reg_out,
		C0 => '0',
		S => S,
		C4 => c_out
	);
	
	inst_mux1: MUX_1
	port map ( 
		A => c_out,
		B => '0',
		S => shiftwrite_a,
		Sout => D
	);
	
	inst_ffd: FFD
	port map (
		CLK => CLK,
		RESET => clear,
		D => D,
		EN => enable_a,
		Q => Q
	);
	
	inst_shift_reg1: ShiftRegister
	port map (
		R => S,
		Sin => Q,
		Spl => shiftwrite_a,
		E => enable_a,
		Clr => clear,
		CLK => CLK,
		Sout => Sin,
		F => F1
	);
	
	inst_shift_reg2: ShiftRegister
	port map (
		R => multiplier,
		Sin => Sin,
		Spl => shiftwrite_m,
		E => enable_m,
		Clr => '0',
		CLK => CLK,
		Sout => shift_out,
		F => F2
	);
	
	Decoder_in <= F1 & F2;
	
	Decoder_hex_inst : decoderHex 
	port map ( 
		clear => clear_decoder,
		bin => Decoder_in,
		HEX0 => HEX0,
		HEX1 => HEx1,
		HEX2 => HEX2
	);
	
product <= Decoder_in;
	
end arch_DataPath;	