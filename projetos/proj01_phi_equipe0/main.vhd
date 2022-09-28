-- Projeto de sistemas digitais combinacionais em VHDL - Proj.01 - PHI
-- Somador de múltiplos bits configurado para permitir selecionar soma ou subtração

library IEEE;
use ieee.std_logic_1164.all;

entity main is
	generic(
		nbits   :   integer := 4								  -- número de bits
	);
	port(
		A, B : in std_logic_vector(nbits-1 downto 0);
		sel_op : in std_logic;
		resultado : out std_logic_vector(nbits-1 downto 0);
		Cout_msb : out std_logic
	);
end main;

architecture comportamento of main is

	-- Declarando o componente somador_de_1bit
	component somador_de_1bit is
		port(
			a, b, cin: in std_logic;							-- Entradas
			s, cout: out std_logic 								-- Saidas
		);
	end component;
	
	-- Declarando o componente seleciona_operacao
	component seleciona_operacao is
		port(
			input_B: in std_logic_vector(nbits-1 downto 0);			-- Entradas
			sel_B : in std_logic;															-- Seleciona a entrada
			B : out std_logic_vector(nbits-1 downto 0)								-- Saidas
		);
	end component;
	
	-- Declaração das constantes e variaveis:
	signal  Cout_somadores : std_logic_vector(nbits downto 0) := (others => '0');  -- Recebe a saida Cout dos blocos somadores
	signal  Cout_invetB : std_logic_vector(nbits downto 0) := (others => '0');		 -- Recebe a saida Cout dos blocos inverte B
	
	signal saidaB2 : std_logic_vector(nbits-1 downto 0); 							 		 -- Saida do complemento de 2 da entrada B
	signal entradaBEscolhida : std_logic_vector(nbits-1 downto 0);						 -- Valor da entrada B escolhida

begin
	
	-- Gerando os blocos duplicados:
	g1: for i in 0 to nbits-1 generate
		-- Instanciando os blocos do somador_de_1bit
		inst_somador_de_1bit : somador_de_1bit
			port map(
				a => A(i),
				b => entradaBEscolhida(i),
				cin => Cout_somadores(i),
				s => resultado(i),
				cout => Cout_somadores(i+1)
			);
		-- Instanciando os blocos do complemento_de_2
		
	end generate g1;
	
	-- Instanciando os blocos do seleciona_operacao
	inst_seleciona_operacao: seleciona_operacao
		port map(
			input_B => B,
			sel_B => sel_op,
			B => entradaBEscolhida
		);
		
	Cout_msb <= Cout_somadores(nbits);  -- salvando o Cout mais significativo
	

end comportamento;