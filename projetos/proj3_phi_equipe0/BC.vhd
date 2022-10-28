-- Maquina de Vendas (Bloco de Controle / Maquina de Estados)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BC is
	-- Definndo as portas de entrada e saida
	port(
		clk, m, b1, b2, nt : in std_logic; -- m = detector de moeda | b = seleciona o produto | comp_R = indica se o valor do produto ja foi pago (resultado de tot<r? se 1 = sim / 0 = não)
		f1, f2, tot_ld, tot_clr, vt_ld, vt_clr : out std_logic -- f = libera o produto | tot_ld =  habilita o armazenamento da soma | tot_clr =  limpa o registrador da soma | vt_ld = habilita o armazenamento na subtração (troco)
		
	);
end BC;

architecture comportamento of BC is
	-- Região de declaração
	constant r1 :  std_logic_vector(0 to 7) := "01100100"; -- custo do produto 1 - R$ 1 = 100 centavos) 
	constant r2 :  std_logic_vector(0 to 7) := "11111010"; -- custo do produto 2 - R$ 2,50 = 250 centavos)
	
	type tipo_estado is (Inicial, espera_p1, Soma_p1, Cal_troco_p1, Libera_p1, espera_p2, Soma_p2, Cal_troco_p2, Libera_p2); -- Estados possiveis
	signal prox_estado, estado_atual : tipo_estado := Inicial;
	
begin -- Descrição do sistema

	logica_proximo_estado : process(estado_atual, m, nt, b1, b2)
	begin
		case estado_atual is 
			when Inicial =>			
				if b1 = '1' and b2 = '0' then 			-- selecional o produto 1
					prox_estado <= espera_p1; 
					
				elsif b1 = '0' and b2 = '1' then			-- selecional o produto 2
					prox_estado <= espera_p2;
					
				else 
					prox_estado <= Inicial;
				end if;
			
			-- Estados do produto 1:
			when espera_p1 =>
				if m = '1' then								--	moeda inserida
					prox_estado <= Soma_p1;
					
				elsif m = '0' and nt = '0' then			-- terminou de paga
					prox_estado <= Cal_troco_p1;
				
				else												-- não terminou de paga
					prox_estado <= espera_p1;
				end if;
				
			when Soma_p1 =>
					prox_estado <= espera_p1;					
				
			when Cal_troco_p1 =>								-- o BO faz vt = tot-r p/ calcular troco
				prox_estado <= Libera_p1;
			
			when Libera_p1 =>
				prox_estado <= Inicial;
			
			-- Estados do produto 2:
			when espera_p2 =>
				if m = '1' then								--	moeda inserida
					prox_estado <= Soma_p2;
					
				elsif m = '0' and nt = '0' then			-- terminou de paga
					prox_estado <= Cal_troco_p2;
				
				else												-- não terminou de paga
					prox_estado <= espera_p2;
				end if;
				
			when Soma_p2 =>
					prox_estado <= espera_p2;					
				
			when Cal_troco_p2 =>								-- o BO faz vt = tot-r p/ calcular troco
				prox_estado <= Libera_p2;
			
			when Libera_p2 =>
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
			tot_clr <= '1';  -- limpa registrador tot
			vt_ld <= '0';
			vt_clr <= '1';	  -- limpa registrador vt

		when espera_p1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  -- limpa registrador vt
			
		when Soma_p1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  -- limpa registrador vt
		
		when Cal_troco_p1 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado
			tot_clr <= '0';  
			vt_ld <= '1';	 	-- registrador vt habilitado
			vt_clr <= '0';	  
		
		when Libera_p1 =>
			f1 <= '1';			-- libera o produto
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado (precisa?)
			tot_clr <= '0';  
			vt_ld <= '1';	 	-- registrador vt habilitado (precisa?)
			vt_clr <= '0';	  
		
		when espera_p2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  -- limpa registrador vt
		
		when Soma_p2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado
			tot_clr <= '0';  
			vt_ld <= '0';
			vt_clr <= '1';	  -- limpa registrador vt
			
		when Cal_troco_p2 =>
			f1 <= '0';
			f2 <= '0';
			tot_ld <= '1';		-- registrador tot habilitado
			tot_clr <= '0';  
			vt_ld <= '1';	 	-- registrador vt habilitado
			vt_clr <= '0';
			
		when Libera_p2 =>
			f1 <= '0';
			f2 <= '1';			-- libera o produto
			tot_ld <= '1';		-- registrador tot habilitado (precisa?)
			tot_clr <= '0';  
			vt_ld <= '1';	 	-- registrador vt habilitado (precisa?)
			vt_clr <= '0';	  
		end case;
	end process;
	
end architecture;