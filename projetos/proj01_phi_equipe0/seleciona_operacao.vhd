-- Projeto 01 - PHI
-- Configura a operação de soma ou subtração atravez da seleção da entrada b (que pode ser b ou seu complemento)

library IEEE;												
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity seleciona_operacao is 										-- Declaracao da entidade							
	generic(
		nbits   :   integer := 4					-- número de bits
	);
	port(
		input_B, input_B2: in std_logic_vector(nbits-1 downto 0);			-- Entradas
		sel_B : in std_logic;													-- Seleciona a entrada
		B : out std_logic_vector(nbits-1 downto 0)					-- Saidas
	);	
end seleciona_operacao;								
	
architecture comportamento of seleciona_operacao is		-- Declaracao da arquitetura
begin															
	B <= input_B when sel_B='0' else std_logic_vector(unsigned(input_B2));		
end comportamento;