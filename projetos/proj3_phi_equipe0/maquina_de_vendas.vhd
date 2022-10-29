-- Maquina de Vendas (main)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity maquina_de_vendas is
	port(
		Clk, M, B1, B2 : in std_logic;
		V, R1, R2 : in std_logic_vector(7 downto 0);
		F1, F2, NT : out std_logic;
		VT : out std_logic_vector(7 downto 0)
	);
end maquina_de_vendas;

architecture comportamento of maquina_de_vendas is
	-- Região de declaração:
	
	-- Bloco de Controle
	component BC is
		port(
			clk, m, b1, b2, resul_pag, resul_troco : in std_logic;
			f1, f2, tot_ld, tot_clr, vt_ld, vt_clr, nt : out std_logic
		);
	end component;
	
	-- Bloco Oeracional
	component BO is
		port(
			clk, tot_ld, tot_clr, vt_ld, vt_clr, b1, b2 : in std_logic;
			r1, r2, v : in std_logic_vector(7 downto 0);
			resul_pag, resul_troco : out std_logic
		);
	end component;
	
	-- Declaração das constantes e variaveis:
	
begin -- Descrição do sistema
	
	-- Instanciando o Bloco de Controle
	inst_ BC : BC
		port map(
			clk => 
			m => 
			b1 =>
			b2 =>
			resul_pag =>
			resul_troco =>
		);
		
	-- Instanciando o Bloco Operacional
	inst_ BO : BO
		port map(
			clk =>
			tot_ld =>
			tot_clr =>
			vt_ld =>
			vt_clr =>
			b1 =>
			b2 =>
			r1 =>
			r2 =>
			v =>
			resul_pag =>
			resul_troco =>
		);
		
end architecture;

