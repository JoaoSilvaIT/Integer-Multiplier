LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CounterUp IS
PORT(
   CE : in std_logic;
   CLK : in std_logic; 
   RESET : in std_logic;
   TC: out std_logic
);

END CounterUp;

ARCHITECTURE arch_counter OF CounterUp IS

   component reg 
   PORT(
		CLK : in std_logic;
		RESET : in STD_LOGIC;
		D : IN STD_LOGIC_VECTOR(3 downto 0);
		EN : IN STD_LOGIC;
		Q : out std_logic_VECTOR(3 downto 0)
   );
   end component;

   component MUX_4
   port(
		A : in STD_LOGIC_VECTOR(3 downto 0);
		B : in STD_LOGIC_VECTOR(3 downto 0);
		S : in std_logic;
		Sout : out STD_LOGIC_VECTOR(3 downto 0)
   );
   end component;

   component Comparador IS
   port(
		A : in std_logic_vector(3 downto 0);
      B : in std_logic_vector(3 downto 0);
      TC : out std_logic
    );
    end component;

   component ADDER IS
   port(
       A: in std_logic_vector(3 downto 0);
       B: in std_logic_vector(3 downto 0);
       C0 : in std_logic;
       S: out std_logic_vector(3 downto 0)
   );
   end component;

   signal mux_out, sum_out, reg_out : std_logic_vector(3 downto 0);
   BEGIN
	
   U_Mux : MUX_4
   port map(
		A => sum_out,
		B => "0000",
		S => RESET,
		Sout => mux_out
   );

   U_reg : reg
   port map(
		CLK => CLK,
		RESET => RESET,
		D => mux_out,
		EN => CE,
		Q => reg_out
   );

   U_SUM : ADDER
   port map(
		A => reg_out,
		B => "0001",
		C0 => '0',
		S => sum_out
   );

   U_comparer : Comparador
   port map(
      A => "0100",
      B => reg_out,
      TC => TC
   );

END arch_counter;
