library IEEE;
use IEEE.std_logic_1164.all;

entity TLAB3_tb is
end entity;

architecture TLAB3_tb_arch of TLAB3_tb is

component TLAB3
port(
	RESET		: in std_logic;
	MCLK		: in std_logic;
	Multiplicand	: in std_logic_vector(3 downto 0);
	Multiplier	: in std_logic_vector(3 downto 0);
	Start		: in std_logic;
	Product		: out std_logic_vector(7 downto 0); 
	HEX0		: out std_logic_vector(7 downto 0); 
	HEX1		: out std_logic_vector(7 downto 0); 
	HEX2		: out std_logic_vector(7 downto 0);
	Ready		: out std_logic;
	a_out : out std_logic_vector(3 downto 0);
	b_out : out std_logic_vector(3 downto 0);
	adder_out : out std_logic_vector(3 downto 0)
);
end component;

-- UUT signals
signal RESET_TB, MCLK_TB : std_logic := '0';
signal Start_TB, Rdy_TB : std_logic;
signal multiplicand_TB, multiplier_TB, a_out, b_out, adder_out : std_logic_vector(3 downto 0);
signal Product_TB : std_logic_vector(7 downto 0);
signal HEX0_TB : std_logic_vector(7 downto 0);
signal HEX1_TB : std_logic_vector(7 downto 0);
signal HEX2_TB : std_logic_vector(7 downto 0);

constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
constant CLK_PERIOD : time := 20 ns;

begin

	MCLK_TB <= not MCLK_TB after MCLK_HALF_PERIOD;
	
	UUT: TLAB3 port map(	RESET		=> RESET_TB,
				MCLK 		=> MCLK_TB, 
				Multiplicand 	=> multiplicand_TB, 
				Multiplier 	=> multiplier_TB, 
				Start 		=> Start_TB, 
				Product		=> Product_TB, 
				HEX0 		=> HEX0_TB, 
				HEX1	 	=> HEX1_TB, 
				HEX2 		=> HEX2_TB, 
				Ready 		=> Rdy_TB,
				a_out => a_out,
				b_out => b_out,
				adder_out => adder_out
	);
	
stimulus: process 
begin
	RESET_TB <= '1';	
	wait for CLK_PERIOD;
	RESET_TB <= '0';	
	
	multiplicand_TB <= "1110";
	multiplier_TB	<= "1110";
	Start_TB	<= '0';
	wait for CLK_PERIOD;

	Start_TB	<= '1';
		
	wait for CLK_PERIOD*30;
	
	multiplicand_TB <= "0001";
	multiplier_TB	<= "1110";
	Start_TB	<= '0';
	wait for CLK_PERIOD;

	Start_TB	<= '1';
		
	wait for CLK_PERIOD*30;

	multiplicand_TB <= "0000";
	Start_TB	<= '0';
	wait for CLK_PERIOD;

	Start_TB	<= '1';
		
	wait for CLK_PERIOD*30;

	wait;
		
		
end process;

end architecture;