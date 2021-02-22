library IEEE;
use IEEE.std_logic_1164.all;

entity mux4to1 is
	port (A, B, C, D : in std_logic;
			Sel : in std_logic_vector(1 downto 0);
			F : out std_logic);
end mux4to1;
--
architecture mux4to1_dataflow of mux4to1 is
	signal m0, m1, m2, m3 : std_logic;
	
	begin 
		m0 <= A and not Sel(1) and not Sel(0);
		m1 <= B and not Sel(1) and Sel (0);
		m2 <= C and Sel(1) and not Sel (0);
		m3 <= D and Sel(1) and Sel(0);
		
		F <= m0 or m1 or m2 or m3;
end mux4to1_dataflow;		