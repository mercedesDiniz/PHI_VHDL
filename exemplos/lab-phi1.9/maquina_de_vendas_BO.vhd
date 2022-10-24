-- Maquina de Vendas (Bloco Operacional)

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity maquina_de_vendas_BO is
	generic(
			nbits   :   integer := 8								  -- número de bits
		);
	-- Definndo as portas de entrada e saida
	port(
		clk, tot_ld, tot_clr: in std_logic;			-- tot_ld => abilita o armazenamento da soma | tot_clr => limpa o registrador da soma
		s, a : in std_logic_vector(nbits-1 downto 0);	-- s => indica o valor do produto | a => indica o valor da moeda
		tot_lt_s : out std_logic						-- tot_lt_s => resutado da comparação s<tot
	);
end maquina_de_vendas_BO;

architecture comportamento of maquina_de_vendas_BO is
	-- Região de declaração
	signal tot_val : std_logic_vector(nbits-1 downto 0) := (others => '0'); -- saida do registrador tot
	signal resut_soma : std_logic_vector(nbits-1 downto 0) := (others => '0'); -- saida do somador
	
begin	-- Descrição do sistema

	-- Registrador da soma dos valores das moedas
	registrador_tot : process(clk, tot_ld, tot_clr, resut_soma)
	begin 
		if tot_clr = '1' then
			tot_val <= (others => '0'); -- limpa
			
		elsif rising_edge(clk) then
			if tot_ld = '1' then
			tot_val <= resut_soma; -- salva
			
			else
				tot_val <= tot_val; -- conserva o valor
			end if;
		
		end if;
		
	end process;
	
	-- Somador dos valores das moedas
	somador : process(tot_val, a)
	begin 
		resut_soma <= std_logic_vector(unsigned(tot_val) + unsigned(a));
	end process;
	
	-- Comparador do valor total das moedas com o valor do produto (s < tot_val)
	comparador : process(tot_val, s)
	begin 
		if tot_val >= s then
			tot_lt_s <= '1';
		else
			tot_lt_s <= '0';
		end if;
	end process;
	

end architecture; 