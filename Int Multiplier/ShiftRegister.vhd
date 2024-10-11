LIBRARY ieee;
USE ieee.std_logic_1164.all;
	
entity ShiftRegister is                           
	port (
		Sin: in std_logic;
		Spl: in std_logic;
		E : in std_logic;
		CLK: in std_logic;
		Clr: in std_logic;
		R: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(3 downto 0);
		Sout: out std_logic
	); 
	
end ShiftRegister;

architecture arch_ShiftRegister of ShiftRegister is
 

component reg is 

	port( 
		CLK : in std_logic;
		RESET : in std_logic;
		D : IN std_logic_vector(3 downto 0);
		EN : IN std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
	end component;

component MUX_4 is										
	port(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		S: in std_logic;
		Sout : out std_logic_vector(3 downto 0)
	);
end component;

signal shift_val, mux_out, reg_val : std_logic_vector(3 downto 0);

begin

shift_val <= Sin & reg_val(3 downto 1);

MUX_4_inst: MUX_4
	port map (
		A => R,
		B => shift_val,
		S => Spl,
		Sout => mux_out
	);

Registo_inst: reg
	port map (
		CLK => CLK,
		RESET => Clr,
		D => mux_out,
		EN => E,
		Q => reg_val
	);
	
F <= reg_val;
Sout <= reg_val(0);

		
end arch_ShiftRegister;