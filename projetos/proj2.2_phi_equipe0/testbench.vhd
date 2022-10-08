-- Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testbench is
end testbench;

architecture comportamento of testbench is
	component sel_mostrador_relogio
	port(													
		clk, rst, b: in std_logic;   		-- b => Indicam o acionamento do butão
		s0, s1 : out std_logic				-- s0, s1 => Indicam o estado
 	);
	end component;
	
	signal clk, b, s0, s1 : std_logic := '0';
	signal rst : std_logic := '1';
	
	constant b_array : std_logic_vector(0 to 52) := "001010101000001111111111011111111001100000111100010";
	
begin 
  
	

end comportamento;