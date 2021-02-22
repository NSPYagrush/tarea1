library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decoder3to8 is
	port (A, B, C : in std_logic;
			F0, F1, F2, F3, F4, F5, F6, F7 : out std_logic);
end decoder3to8;
architecture dataflow of decoder3to8 is
begin
	F0 <= not C and not B and not A;
	F1 <= not C and not B and A;
	F2 <= not C and B and not A;
	F3 <= not C and B and A;
	F4 <= C and not B and not A;
	F5 <= C and not B and A;
	F6 <= C and B and not A;
	F7 <= C and B and A;
end dataflow;
