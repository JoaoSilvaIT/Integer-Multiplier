LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity ADDER is
port ( A: in std_logic_vector(3 downto 0);
B: in std_logic_vector(3 downto 0);
C0 : in std_logic;
S: out std_logic_vector(3 downto 0);
C4: out std_logic);
end ADDER;

architecture ARCH_ADDER of ADDER is
component FULLADDER
PORT ( A: in std_logic;
B: in std_logic;
Cin: in std_logic;
R: out std_logic;
Cout: out std_logic);
end component;

signal C1,C2,C3: std_logic;
begin
FA0: FULLADDER port map (A => A(0), B=>B(0), Cin => C0, R=> S(0), Cout => C1);
FA1: FULLADDER port map (A => A(1), B=>B(1), Cin => C1, R=> S(1), Cout => C2);
FA2: FULLADDER port map (A => A(2), B=>B(2), Cin => C2, R=> S(2), Cout => C3);
FA3: FULLADDER port map (A => A(3), B=>B(3), Cin => C3, R=> S(3), Cout => C4);
end arch_adder;