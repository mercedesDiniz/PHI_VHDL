-- Maquina de Vendas (Main)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity main is
	generic(
		nbits   :   integer := 8								  -- número de bits
	);
	port(
		Clk, C : in std_logic;
		S, A : in std_logic_vector(nbits-1 downto 0);
		D : out std_logic
	);
end main;

architecture comportamento of main is
	-- Região de declaração:
	
	-- Bloco de Controlador
	component maquina_de_vendas_BC is
		port(
			clk, tot_lt_s, c : in std_logic;			-- c => indica inserção da moeda | tot_lt_s => resutado da comparação s<tot
 			tot_ld, tot_clr, d : out std_logic		-- d => libera o produto | tot_ld => abilita o armazenamento da soma | tot_clr => limpa o registrador da soma
		);
	end component;
	
	-- Bloco Operacional
	component maquina_de_vendas_BO is
		port(
			clk, tot_ld, tot_clr: in std_logic;					-- tot_ld => abilita o armazenamento da soma | tot_clr => limpa o registrador da soma
			s, a : in std_logic_vector(nbits-1 downto 0);	-- s => indica o valor do produto | a => indica o valor da moeda
			tot_lt_s : out std_logic								-- tot_lt_s => resutado da comparação s<tot
		);
	end component;
	
	-- Declaração das constantes e variaveis:
	signal tot_ld_aux,  tot_clr_aux, tot_lt_s_aux: std_logic;
	
	
begin	-- Descrição do sistema

	-- Instanciando o BC
	BC : maquina_de_vendas_BC
		port map(
			clk => Clk,
			tot_lt_s => tot_lt_s_aux,
			c => C,
			tot_ld => tot_ld_aux,
			tot_clr => tot_clr_aux,
			d => D
		);
		
	-- Instanciando o BO
	BO : maquina_de_vendas_BO
		port map(
			clk => Clk,
			tot_ld => tot_ld_aux,
			tot_clr => tot_clr_aux,
			s => S,
			a => A,
			tot_lt_s => tot_lt_s_aux
		);
		
end architecture;