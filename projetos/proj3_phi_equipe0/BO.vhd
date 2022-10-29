-- Maquina de Vendas (Bloco Operacional)

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BO is
	-- Definndo as portas de entrada e saida
	port(
		clk, tot_ld, tot_clr, vt_ld, vt_clr, b1, b2 : in std_logic;
		r1, r2, v : in std_logic_vector(7 downto 0);
		resul_pag, resul_troco : out std_logic
	);
end BO;

architecture comportamento of BO is
	-- Região de declaração
	--constant r1 :  std_logic_vector(0 to 7) := "01100100"; -- custo do produto 1 - R$ 1 = 100 centavos 
	--constant r2 :  std_logic_vector(0 to 7) := "11111010"; -- custo do produto 2 - R$ 2,50 = 250 centavos
	signal val_tot : std_logic_vector(7 downto 0);-- := (others => '0'); -- valor armazenado no registrador tot
	signal val_vt : std_logic_vector(7 downto 0); -- valor armazenado no registrador vt
	
	signal r : std_logic_vector(7 downto 0) := (others => '0'); -- preço do produto selecionado
	
	signal resul_soma : std_logic_vector(7 downto 0) := (others => '0'); -- >>> verificar tamanho <<<
	signal resul_subt : std_logic_vector(7 downto 0) := (others => '0'); -- >>> verificar tamanho <<<
	
begin -- Descrição do sistema

	sel_produto : process(b1, b2)
	begin
		if b1 = '1' and b2 = '0' then -- selecionou o produto 1
			r <= r1;
		elsif b1 = '0' and b2 = '1' then -- selecionou o produto 2
			r <= r2;
		else
			r <= (others => '0'); 	-- limpa
		end if;
	end process;
	
	registrador_tot : process(clk, tot_ld, tot_clr, resul_soma)
	begin
		if tot_clr = '1' then
			val_tot <= (others => '0'); 	-- limpa
			
		elsif rising_edge(clk) then
			if tot_ld = '1' then
				val_tot <= resul_soma; 		-- salva
			else
				val_tot <= val_tot;			-- conserva o valor
			end if;
			
		end if;	
	end process;
	
	registrador_vt : process(clk, vt_ld, vt_clr, resul_subt)
	begin
		if vt_clr = '1' then
			val_vt <= (others => '0'); 	-- limpa
			
		elsif rising_edge(clk) then
			if vt_ld = '1' then
				val_vt <= resul_subt; 		-- salva
			else
				val_vt <= val_vt;			-- conserva o valor
			end if;
			
		end if;	
	end process;
	
	somador : process(val_tot, v)
	begin
		-- resul_soma
	end process;
	
	verifica_pagamento : process(val_tot, r)
	begin
		-- resul_pag
	end process;
	
	subtrator : process(val_tot, r)
	begin
		-- resul_subt
	end process;
	
	verifica_troco : process(val_vt)
	begin
		-- resul_troco
	end process;
	

end architecture;