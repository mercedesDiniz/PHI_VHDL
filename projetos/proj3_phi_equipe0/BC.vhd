-- Maquina de Vendas (Bloco de Controle / Maquina de Estados)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BC is
	-- Definndo as portas de entrada e saida
	port(																			-- resul_pag = indica se o valor do produto ja foi pago (tot<r?) | resul_troco = indica se tem troco (vt>0?)
		clk, m, b1, b2, resul_pag, resul_troco : in std_logic; 	-- m = detector de moeda | b = seleciona o produto
		f1, f2, tot_ld, tot_clr, vt_ld, vt_clr, nt : out std_logic 	-- f = libera o produto | tot_ld e vt_ld = habilita os registradores | tot_clr e vt_clr =  limpa os registradores
	);
end BC;

architecture comportamento of BC is
	-- Região de declaração
	type tipo_estado is (Inicial, Espera1, Soma1, Cal_troco1, Libera_troco1, Libera_prod1, Espera2, Soma2, Cal_troco2, Libera_troco2, Libera_prod2); -- Estados possiveis
	signal prox_estado, estado_atual : tipo_estado := Inicial;
	
begin -- Descrição do sistema

	logica_proximo_estado : process(estado_atual, m, b1, b2, resul_pag, resul_troco)
	begin
		case estado_atual is 
			when Inicial =>			
				if b1 = '1' and b2 = '0' then 			-- selecional o produto 1
					prox_estado <= Espera1; 
					
				elsif b1 = '0' and b2 = '1' then			-- selecional o produto 2
					prox_estado <= Espera2;
					
				else 
					prox_estado <= Inicial;
				end if;
			
			-- Estados do produto 1:
			when Espera1 =>
				if m = '1' then										--	moeda inserida
					prox_estado <= Soma1;
					
				elsif m = '0' and resul_pag = '1' then			-- terminou de paga
					prox_estado <= Cal_troco1;
				
				else														-- não terminou de paga
					prox_estado <= Espera1;
				end if;
				
			when Soma1 =>											-- o BO faz tot = tot + v p/ calcular o total de dinheiro inserido
					prox_estado <= Espera1;					
				
			when Cal_troco1 =>										-- o BO faz vt = tot-r p/ calcular o possivel troco
				if resul_troco = '1' then -- tem troco (vt>0)
					prox_estado <= Libera_troco1;
				else 
					prox_estado <= Libera_prod1;
				end if;
				
			when Libera_troco1 =>
				prox_estado <= Libera_prod1;
				
			when Libera_prod1 =>
				prox_estado <= Inicial;
			
			-- Estados do produto 2:
			when Espera2 =>
				if m = '1' then										--	moeda inserida
					prox_estado <= Soma2;
					
				elsif m = '0' and resul_pag = '1' then			-- terminou de paga
					prox_estado <= Cal_troco2;
				
				else														-- não terminou de paga
					prox_estado <= Espera2;
				end if;
				
			when Soma2 =>												-- o BO faz tot = tot + v p/ calcular o total de dinheiro inserido
					prox_estado <= Espera2;					
				
			when Cal_troco2 =>										-- o BO faz vt = tot-r p/ calcular o possivel troco
				if resul_troco = '1' then -- tem troco (vt>0)
					prox_estado <= Libera_troco2;
				else 
					prox_estado <= Libera_prod2;
				end if;
				
			when Libera_troco2 =>
				prox_estado <= Libera_prod2;
				
			when Libera_prod2 =>
				prox_estado <= Inicial;
		end case;
	end process;
	
	registrador_estado : process(clk)
	begin
		if rising_edge(clk) then
			estado_atual <= prox_estado;  -- Vai p/ o proximo estado
		end if;
	end process;
	
	logica_saida : process(estado_atual)
	begin
		case estado_atual is
		when Inicial =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '0';
			tot_clr <= '1';  	-- limpa registrador tot
			vt_ld <= '0';
			vt_clr <= '1';		-- limpa registrador vt
			nt <= '0';
			
		-- Estados dodo a seleção do produto 1:
		when Espera1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '0';		-- habilita registrador tot
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  	-- limpa registrador vt
			nt <= '0';
			
		when Soma1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- habilita registrador tot
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  	-- limpa registrador vt
			nt <= '0'; 
			
		when Cal_troco1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '0';		-- habilita registrador tot
			tot_clr <= '0';  
			vt_ld <= '1';		-- habilita registrador vt
			vt_clr <= '0';	  	
			nt <= '0';
			
		when Libera_troco1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '0';		
			tot_clr <= '1';  	-- limpa registrador tot
			vt_ld <= '1';		-- habilita registrador vt
			vt_clr <= '0';	  	
			nt <= '1';			-- indica que há troco (sendo o valor vt)
			
		when Libera_prod1 =>
			f1 <= '1';			-- libera o produto 1
			f2 <= '0';
			tot_ld <= '0';		
			tot_clr <= '1';  	-- limpa registrador tot
			vt_ld <= '0';		
			vt_clr <= '1';	  	-- limp o registrador vt
			nt <= '0';

		-- Estados dodo a seleção do produto 2:
		when Espera2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- habilita registrador tot
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  	-- limpa registrador vt
			nt <= '0';
			
		when Soma2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- habilita registrador tot
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  	-- limpa registrador vt
			nt <= '0'; 
			
		when Cal_troco2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- habilita registrador tot
			tot_clr <= '0';  
			vt_ld <= '1';		-- habilita registrador vt
			vt_clr <= '0';	  	
			nt <= '0';
			
		when Libera_troco2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '0';		
			tot_clr <= '1';  	-- limpa registrador tot
			vt_ld <= '1';		-- habilita registrador vt
			vt_clr <= '0';	  	
			nt <= '1';			-- indica que há troco (sendo o valor vt)
			
		when Libera_prod2 =>
			f1 <= '0';			
			f2 <= '1';			-- libera o produto 2
			tot_ld <= '0';		
			tot_clr <= '1';  	-- limpa registrador tot
			vt_ld <= '0';		
			vt_clr <= '1';	  	-- limpa o registrador vt
			nt <= '0';			
			
		end case;
	end process;
	
end architecture;