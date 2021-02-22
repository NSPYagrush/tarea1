library IEEE;
use IEEE.std_logic_1164.all;
--
entity demux1to4 is
	port (A : in std_logic;
			Sel : in std_logic_vector(1 downto 0);
			W, X, Y, Z : out std_logic);
end demux1to4;
--
architecture demux1to4_dataflow of demux1to4 is	
	begin 
		W <= A and not Sel(1) and not Sel(0);
		X <= A and not Sel(1) and Sel (0);
		Y <= A and Sel(1) and not Sel (0);
		Z <= A and Sel(1) and Sel(0);
end demux1to4_dataflow;		