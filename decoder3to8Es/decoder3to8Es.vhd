--decoder3to8Es

library ieee;
use ieee.std_logic_1164.all;
entity decoder3to8Es is
	port (A : in std_logic_vector(0 to 2);
			F : out std_logic_vector(0 to 7));
end decoder3to8Es;
architecture decoder3to8Es_dataflow of decoder3to8Es is
	begin 
		process (A)
			begin 
				case A is	
					when "000" => F <= "00000001";
					when "001" => F <= "00000010";
					when "010" => F <= "00000100";
					when "011" => F <= "00001000";
					when "100" => F <= "00010000";
					when "101" => F <= "00100000";
					when "110" => F <= "01000000";
					when "111" => F <= "10000000";
					when others => F <= "00000000";
				end case;
			end process;
	end decoder3to8Es_dataflow;