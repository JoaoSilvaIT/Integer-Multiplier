LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX_1 is 
port( A : in std_logic;
		B : in std_logic;
		S: in std_logic;
		Sout : out STD_LOGIC
);
	end MUX_1;  

architecture arch_MUX_1 of MUX_1 is 

begin 

	Sout <= (a and not s) or (b and s);
	
end arch_MUX_1;