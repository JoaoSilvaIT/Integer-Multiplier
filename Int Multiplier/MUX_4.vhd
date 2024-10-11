LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX_4 is 
port( A : in STD_LOGIC_VECTOR(3 downto 0);
		B : in STD_LOGIC_VECTOR(3 downto 0);
		S: in std_logic;
		Sout : out STD_LOGIC_VECTOR(3 downto 0)
);
end MUX_4; 

architecture arch_MUX_4 of MUX_4 is 

begin 
	Sout(0) <= (A(0) and not S) or (B(0) and S);
	Sout(1) <= (A(1) and not S) or (B(1) and S);
	Sout(2) <= (A(2) and not S) or (B(2) and S);
	Sout(3) <= (A(3) and not S) or (B(3) and S);
	
end arch_MUX_4;