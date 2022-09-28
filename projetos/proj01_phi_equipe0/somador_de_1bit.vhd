-- Projeto 01 - PHI
-- Somador completo de 1 bit a partir de portas lógicas usando funções lógicas da biblioteca std_logic_1164

library IEEE;												
use IEEE.std_logic_1164.all;

entity somador_de_1bit is 								-- Declaracao da entidade
	port(
		a, b, cin: in std_logic;							-- Entradas
		s, cout: out std_logic 								-- Saidas
	);	
end somador_de_1bit;								
	
architecture comportamento of somador_de_1bit is		-- Declaracao da arquitetura
begin															
	s <= cin xor (a xor b);								
	cout <= (cin and (a xor b)) or (a and b);		
	
end comportamento;