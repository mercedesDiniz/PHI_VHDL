-- Maquina de Vendas (Bloco Operacional)

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
USE ieee.std_logic_unsigned.all ;

entity BO is
	-- Definndo as portas de entrada e saida
	port(
		clk, tot_ld, tot_clr, vt_ld, vt_clr, b1, b2 : in std_logic;
		r1, r2, v : in std_logic_vector(7 downto 0);
		resul_pag, resul_troco : out std_logic;
		val_troco : out std_logic_vector(7 downto 0)
	);
end BO;

architecture comportamento of BO is
	-- Região de declaração

	signal val_tot : std_logic_vector(7 downto 0);-- := (others => '0'); -- valor armazenado no registrador tot
	signal val_vt : std_logic_vector(7 downto 0); -- valor armazenado no registrador vt
	
	signal r : std_logic_vector(7 downto 0) := (others => '0'); -- preço do produto selecionado
	
	signal resul_soma : std_logic_vector(7 downto 0) := (others => '0'); -- >>> verificar tamanho <<<
	signal resul_subt : std_logic_vector(7 downto 0) := (others => '0'); -- >>> verificar tamanho <<<
	
begin -- Descrição do sistema

	sel_produto : process(b1, b2, r1, r2)
	begin
		if b1 = '1' and b2 = '0' then -- selecionou o produto 1
			r <= r1;
		elsif b1 = '0' and b2 = '1' then -- selecionou o produto 2
			r <= r2;
		else
			r <= (others => '0'); 	-- limpa
		end if;
	end process;
	
	registrador_tot : process(clk, tot_ld, tot_clr, resul_soma, val_tot)
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
	
	registrador_vt : process(clk, vt_ld, vt_clr, resul_subt, val_vt)
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
		resul_soma <= std_logic_vector(unsigned(val_tot) + unsigned(v));
		-- resul_soma
	end process;
	
	verifica_pagamento : process(val_tot, r)
	begin
		if val_tot >= r then 
			resul_pag <= '1';
		else 
			resul_pag <= '0';
		end if;
		-- resul_pag
	end process;
	
	subtrator : process(val_tot, r)
	begin
		resul_subt <= std_logic_vector(unsigned(val_tot) - unsigned(r));
		-- resul_subt
	end process;
	
	verifica_troco : process(val_vt)
	begin
		if val_vt > "00000000" then 
			resul_troco <= '1';
			val_troco <= val_vt;
		else 
			resul_troco <= '0';
			val_troco <= "00000000";
		end if;
		-- resul_troco
	end process;
	

end architecture;
