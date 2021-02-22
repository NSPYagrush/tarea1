library IEEE;
use IEEE.std_logic_1164.all;

entity demux1to4Es is
	port (A : in std_logic;
			Sel : in std_logic_vector(1 downto 0);
			W, X, Y, Z : out std_logic);
end entity;
--
architecture demux1to4Es_Est of demux1to4Es is
	
	component PART_AND3 
		port (A, B, C : in std_logic;
				F : out std_logic);
	end component;		
	
	begin 
		U1 : PART_AND3 port map (A => A, B => not Sel(1), C => not Sel(0), F => W);
		U2 : PART_AND3 port map (A => A, B => not Sel(1), C => Sel(0), F => X);
		U3 : PART_AND3 port map (A => A, B => Sel(1), C => not Sel(0), F => Y);
		U4 : PART_AND3 port map (A => A, B => Sel(1), C => Sel(0), F => Z);
		
end demux1to4Es_Est;		