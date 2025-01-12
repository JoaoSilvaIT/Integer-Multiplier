library IEEE;
use IEEE.std_logic_1164.all;

entity DataPath_tb is
end entity;

architecture DataPath_tb_arch of DataPath_tb is

component DataPath
port(
		multiplicand : in std_logic_vector(3 downto 0);
		multiplier : in std_logic_vector(3 downto 0);
		reset_counter : in std_logic;
		shiftwrite_a : in std_logic;
		shiftwrite_m : in std_logic;
		enable_counter : in std_logic;
		enable_reg : in std_logic;
		enable_a : in std_logic;
		enable_m : in std_logic;
		CLK : in std_logic;
		clear_decoder : in std_logic;
		clear : in std_logic;
		shift_out : out std_logic;
		TC : out std_logic;
		product : out std_logic_vector(7 downto 0); 
		HEX0 : out std_logic_vector(7 downto 0); 
		HEX1 : out std_logic_vector(7 downto 0); 
		HEX2 : out std_logic_vector(7 downto 0)
);
end component;

-- UUT signals
signal R_TB, CLK_TB : std_logic := '0';
signal SW_A_TB, SW_m_TB, Enable_A_TB, Enable_m_TB, E_TB, CE_TB, Clear_TB, clr_TB, S_out_TB, TC_TB : std_logic;
signal dataMultiplicand_TB, dataMultiplier_TB, adder_A_TB, adder_B_TB, adder_S_TB : std_logic_vector(3 downto 0);
signal Product_TB : std_logic_vector(7 downto 0);
signal HEX0_TB : std_logic_vector(7 downto 0);
signal HEX1_TB : std_logic_vector(7 downto 0);
signal HEX2_TB : std_logic_vector(7 downto 0);

constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
constant CLK_PERIOD : time := 20 ns;

begin

	CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
	
	UUT: DataPath port map( multiplicand => dataMultiplicand_TB,
		multiplier => dataMultiplier_TB,
		reset_counter => R_TB,
		shiftwrite_a => SW_A_TB,
		shiftwrite_m => SW_m_TB,
		enable_counter => CE_TB,
		enable_reg => E_TB,
		enable_a => Enable_A_TB,
		enable_m => Enable_m_TB,
		CLK => CLK_TB,
		clear_decoder => Clear_TB,
		clear => clr_TB,
		shift_out => S_out_TB,
		TC =>TC_TB,
		product =>Product_TB,
		HEX0 =>HEX0_TB,
		HEX1 =>HEX1_TB,
		HEX2 =>HEX2_TB
	);
	
stimulus: process 
begin
	
	dataMultiplicand_TB <= "1010";
	dataMultiplier_TB	<= "0011";
	R_TB <= '1';
	Clear_TB <= '1';
	clr_TB <= '1';
	CE_TB <= '0';
	E_TB <= '1';
	Enable_A_TB <= '1';
	Enable_m_TB <= '1';
	SW_A_TB <= '0';
	SW_m_TB <= '0';
		
	wait for CLK_PERIOD;
	R_TB <= '0';
	CE_TB <= '0';
	clr_TB <= '0';
	Clear_TB <= '0';
	SW_A_TB <= '0';	
	
	--wait for CLK_PERIOD*30;
	
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '1';
	SW_m_TB <= '1';
	CE_TB <= '1';	
	--wait for CLK_PERIOD*30;
	
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '0';
	Enable_m_TB <= '0';
	CE_TB <= '0';
	
		
	--wait for CLK_PERIOD*30;
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '1';
	Enable_m_TB <= '1';
	SW_m_TB <= '1';
	
	wait for CLK_PERIOD;

	SW_A_TB <= '1';
	CE_TB <= '1';
	
	wait for CLK_PERIOD;
	------------------------------------------------- com novo valor 1
	
	wait for CLK_PERIOD;
	dataMultiplicand_TB <= "1010";
	dataMultiplier_TB	<= "0100";
	R_TB <= '1';
	Clear_TB <= '1';
	clr_TB <= '1';
	CE_TB <= '0';
	E_TB <= '1';
	Enable_A_TB <= '1';
	Enable_m_TB <= '1';
	SW_A_TB <= '0';
	SW_m_TB <= '0';
		
	wait for CLK_PERIOD;
	R_TB <= '0';
	CE_TB <= '0';
	clr_TB <= '0';
	Clear_TB <= '0';
	SW_A_TB <= '1';	
	SW_m_TB <= '1'; --0
	--wait for CLK_PERIOD*30;
	
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '1';
	SW_m_TB <= '1';
	CE_TB <= '1';	--1
	--wait for CLK_PERIOD*30;
	
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '0';
	Enable_m_TB <= '0';
	CE_TB <= '0'; --2
		
	
		
	--wait for CLK_PERIOD*30;
	
	wait for CLK_PERIOD;
	
	Enable_m_TB <= '1';
	SW_A_TB <= '1';
	SW_m_TB <= '1';
	CE_TB <= '1';--2
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '1';
	SW_m_TB <= '1';
	CE_TB <= '1';
	
	wait for CLK_PERIOD;
	
	------------------------------ novo valor 2
	
	wait for CLK_PERIOD;
	dataMultiplicand_TB <= "1100";
	dataMultiplier_TB	<= "0011";
	R_TB <= '1';
	Clear_TB <= '1';
	clr_TB <= '1';
	CE_TB <= '0';
	E_TB <= '1';
	Enable_A_TB <= '1';
	Enable_m_TB <= '1';
	SW_A_TB <= '0';
	SW_m_TB <= '0';
		
	wait for CLK_PERIOD;
	R_TB <= '0';
	CE_TB <= '0';
	clr_TB <= '0';
	Clear_TB <= '0';
	SW_A_TB <= '0';	
	
	--wait for CLK_PERIOD*30;
	
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '1';
	SW_m_TB <= '1';
	CE_TB <= '1';	
	--wait for CLK_PERIOD*30;
	
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '0';
	Enable_m_TB <= '0';
	CE_TB <= '0';
	
		
	--wait for CLK_PERIOD*30;
	
	wait for CLK_PERIOD;
	
	SW_A_TB <= '1';
	Enable_m_TB <= '1';
	SW_m_TB <= '1';
	
	wait for CLK_PERIOD;

	SW_A_TB <= '1';
	CE_TB <= '1';
	
	wait for CLK_PERIOD;
	wait;
		
		
end process;

end architecture;