library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bin2dec_int is
    Port ( bin : in  STD_LOGIC_VECTOR (7 downto 0);
           dec : out  STD_LOGIC_VECTOR (11 downto 0));
end bin2dec_int;

architecture Behavioral of bin2dec_int is

begin
	 
	process(bin)
		variable x: std_logic_vector(19 downto 0); 
	begin
		for i in 0 to 19 loop
			x(i) := '0';
		end loop;
		
		x(7 downto 0) := bin;
		
		for i in 0 to 7 loop
			-- check ones(units)
			if(x(11 downto 8) > 4)then
				x(11 downto 8) := x(11 downto 8) + 3;
			end if; 
			-- check Tens
			if(x(15 downto 12) > 4)then
				x(15 downto 12) := x(15 downto 12) + 3;
			end if; 
			-- check Hundreds
			if(x(19 downto 16) > 4)then
				x(19 downto 16) := x(19 downto 16) + 3;
			end if; 			

			-- shift left
			x(19 downto 1) := x(18 downto 0);
		end loop;
		dec <= x(19 downto 8);
			
	end process;
	
end Behavioral;

