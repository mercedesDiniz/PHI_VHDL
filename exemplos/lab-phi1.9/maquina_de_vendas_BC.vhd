-- Maquina de Vendas (Bloco de Controlador / Maquina de Estados)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity maquina_de_vendas_BC is
	-- Definndo as portas de entrada e saida
	port(
		clk, tot_lt_s, c : in std_logic;			-- c => indica inserção da moeda | tot_lt_s => resutado da comparação s<tot
		tot_ld, tot_clr, d : out std_logic		-- d => libera o produto | tot_ld => abilita o armazenamento da soma | tot_clr => limpa o registrador da soma
	);
end maquina_de_vendas_BC;

architecture comportamento of maquina_de_vendas_BC is 
	-- Região de declaração
	type tipo_estado is (Init, est_Wait, Add, Disp); -- Estados possiveis
	signal prox_estado, estado_atual : tipo_estado := Init;
	
begin -- Descrição do sistema
	-- Circuito combinacional -> não depende de clock
	logica_proximo_estado : process(estado_atual, c, tot_lt_s)
	begin
		case estado_atual is
			when Init =>
				prox_estado <= est_Wait;
				
			when est_Wait =>
				if c = '1' then
					prox_estado <= Add;
				elsif c = '0' and tot_lt_s = '0' then
					prox_estado <= Disp;
				else -- c = '0' and tot_lt_s = '1'
					prox_estado <= est_Wait; 
				end if;
				
			when Add =>
				prox_estado <= est_Wait;
				
			When Disp =>
				prox_estado <= Init;
				
		end case;
	end process;
	
	registrador_estado : process(clk)
	begin
		if rising_edge(clk) then
			estado_atual <= prox_estado;  -- Vai p/ o proximo estado
		end if;
	end process;
	
	-- Circuito combinacional -> não depende de clock
	logica_saida : process(estado_atual)
	begin
		case estado_atual is
			when Init =>
				tot_ld <= '0'; 
				tot_clr <= '1';	-- limpa o registrador da soma
				d <= '0';                          
			when est_Wait =>
				tot_ld <= '0';
				tot_clr <= '0';
				d <= '0';
			when Add =>
				tot_ld <= '1';		-- abilita o armazenamento da soma
				tot_clr <= '0';
				d <= '0';
			when Disp =>
				tot_ld <= '0';
				tot_clr <= '0';
				d <= '1';			-- libera o produto
		end case;
	end process;
	

end architecture;