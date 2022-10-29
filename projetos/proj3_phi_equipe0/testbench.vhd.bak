-- Testbench

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity testbench is
end testbench;

architecture comportamento of testbench is
	-- Declarando o componente main
	component maquina_de_vendas is
	port(
		
	);
	end component;
	
	-- Declarando as constantes e variaveis
	--constant r1 :  std_logic_vector(0 to 7) := "01100100"; -- custo do produto 1 - R$ 1 = 100 centavos 
	--constant r2 :  std_logic_vector(0 to 7) := "11111010"; -- custo do produto 2 - R$ 2,50 = 250 centavos
	signal clock : std_logic := '0';
	
begin -- Descrição do sistema
	
	-- Instanciando a main
	int_maquina_de_vendas : maquina_de_vendas 
		port map(
			
		);
		
	
	
	clock <= not clock after 5 ns;  -- variando o clock

end architecture;
	