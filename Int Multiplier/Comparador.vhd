LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comparador IS
	port( A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);		
		TC: out std_logic
	);
end Comparador;

architecture Comparador_Cup of Comparador is

begin
 TC <= (A(0) xnor B(0)) and (A(1) xnor B(1)) and (A(2) xnor B(2));
 
end Comparador_Cup; 
