LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY contador99_testbench IS 
END contador99_testbench;

ARCHITECTURE testbench OF contador99_testbench IS 
	COMPONENT contador99 IS 
	PORT
	(	ck :  IN  STD_LOGIC;
		hex0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		hex1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
	END COMPONENT;
	
	signal clk : std_logic := '0';
BEGIN

	contador99_inst : contador99
	port map(
		ck => clk,
		hex0 => open,
		hex1 => open
	);
	
	clk <= not clk after 5 ns;

END testbench;