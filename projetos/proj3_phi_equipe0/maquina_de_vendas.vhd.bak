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
			resul_pag, resul_troco : out std_logic;
			val_troco : out std_logic_vector(7 downto 0)
		);
	end component;
	
	-- Declaração das constantes e variaveis:
	signal resul_pag_aux, resul_troco_aux : std_logic;
	signal tot_ld_aux, tot_clr_aux, vt_ld_aux, vt_clr_aux : std_logic;

begin -- Descrição do sistema
	
	-- Instanciando o Bloco de Controle
	inst_BC : BC
		port map(
			clk => Clk,
			m => M,
			b1 => B1,
			b2 => B2,
			resul_pag => resul_pag_aux,
			resul_troco => resul_troco_aux,
			f1 => F1,
			f2 => F2,
			tot_ld => tot_ld_aux,
			tot_clr => tot_clr_aux,
			vt_ld => vt_ld_aux,
			vt_clr => vt_clr_aux,
			nt => NT
		);
		
	-- Instanciando o Bloco Operacional
	inst_BO : BO
		port map(
			clk => Clk,
			tot_ld => tot_ld_aux,
			tot_clr => tot_clr_aux, 
			vt_ld => vt_ld_aux,
			vt_clr => vt_clr_aux,
			b1 => B1,
			b2 => B2,
			r1 => R1,
			r2 => R2,
			v => V,
			resul_pag => resul_pag_aux,
			resul_troco => resul_troco_aux,
			val_troco => VT
		);
		
end architecture;

