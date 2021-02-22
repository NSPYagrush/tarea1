library IEEE;
use IEEE.std_logic_1164.all;

entity mux4to1Es is
	port (A, B, C, D : in std_logic;
			Sel : in std_logic_vector(1 downto 0);
			F : out std_logic);
end mux4to1Es;
--
architecture mux4to1_Est of mux4to1Es is
	signal m0, m1, m2, m3 : std_logic;
	
	component AND3 
		port (A, B, C : in std_logic;
				F : out std_logic);
	end component;		
	
	component OR4
		port (A, B, C, D : in std_logic;
				F : out std_logic);
	end component;		
	
	begin 
		U1 : AND3 port map (A => A, B => Sel(1), C => Sel(0), F => m0);
		U2 : AND3 port map (A => A, B => Sel(1), C => Sel(0), F => m0);
		U3 : AND3 port map (A => A, B => Sel(1), C => Sel(0), F => m0);
		U4 : AND3 port map (A => A, B => Sel(1), C => Sel(0), F => m0);
		U5 : OR4 port map (A => m0, B => m1, C => m2, D => m3, F => F);
		
end mux4to1_Est;		