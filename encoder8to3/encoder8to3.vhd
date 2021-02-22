library ieee;
use ieee.std_logic_1164.all;

entity encoder8to3 is
	port (F : in std_logic_vector(7 downto 0);
			A, B, C : out std_logic);
end entity;

architecture encoder8to3_dataflow of encoder8to3 is
	begin 
		process (F)
			begin 
				C <= F(4) or F(5) or F(6) or F(7);
				B <= F(2) or F(3) or F(6) or F(7);
				A <= F(1) or F(3) or F(5) or F(7);
			end process;
end encoder8to3_dataflow;