library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_arith.all;

entity testbench is
end entity;

architecture prueba of testbench is	

  component demux1to4 is
  	port (A : in std_logic;
			   Sel : in std_logic_vector(1 downto 0);
			   W, X, Y, Z : out std_logic);
  end component;

	begin 
	  A <= '1' after 10 ns, '0' after 20 ns, '0' after 30 ns;
	  Sel(1) <= '1' after 20 ns;
	  Sel(0) <= '1' after 30 ns;
	  
		W <= A and not Sel(1) and not Sel(0);
		X <= A and not Sel(1) and Sel (0);
		Y <= A and Sel(1) and not Sel (0);
		Z <= A and Sel(1) and Sel(0);
end prueba;		