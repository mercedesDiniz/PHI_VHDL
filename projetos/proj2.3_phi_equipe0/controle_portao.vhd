-- Projeto 2.3 - PHI
-- Máquina de estados que controla os processos de abertura e fechamento de um portão. Se o botão é pressionado uma vez, o portão fecha, se é 
-- pressionado novamente, o portão abre. Nos processos de abertura ou fechamento, se houver algo no percurso do portão, indicado pelo sensor de 
-- presença P, o portão para o seu movimento, e retoma quando não houver mais nada no seu percurso. 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controle_portao is
	-- Definindo as portas de entrada e saida
	port(
		clk, rst, b, p, fc1, fc2 : in std_logic;		-- b => Indica o comando do botão | p => Sinalizador de presença
		s0, s1 : out std_logic
	);
end controle_portao;

architecture comportamento of controle_portao  is 
	-- Região de declaração:
	type tipo_estado is (Aberto, Pause_AF, Fechado, Pause_FA); -- Estados possiveis
	signal prox_estado, estado_atual : tipo_estado := Fechado;
	signal b_anterior : std_logic := '0';		-- Variavel auxiliar (buffer do valor de b)
	
	-- sinalizadores de fins de curso  (*****obs.: ainda n sei oq fazer com isso)
	--signal fc1 ,fc2 : std_logic := '0';	-- do processo de Abertura (fc1) e Fechamento (fc2) 
	
begin -- Descrição do sistema

	-- Circuito combinacional -> não depende de clock
	logica_proximo_estado : process(estado_atual, b, b_anterior, p)
	begin
		case estado_atual is
			when Fechado =>
				if p = '0' and b = '1' and b_anterior = '0' and fc1 ='1'then
					prox_estado <= Aberto;
				elsif	p = '1' and b = '1' and fc1 ='0' then
					prox_estado <= Pause_FA;
				else 
					prox_estado <= Fechado;
				end if;
				
			when Pause_FA =>
				if p = '0'  and fc1 ='0' then
					prox_estado <= Aberto;
				else
					prox_estado <= Pause_FA;
				end if;	
			
			when Aberto =>
				if p = '0' and b = '1' and b_anterior = '0' and fc2='1' then
					prox_estado <= Fechado;
				elsif	p = '1' and b = '1' and fc2='0' then
					prox_estado <= Pause_AF;
				else 
					prox_estado <= Aberto;
				end if;
				
			when Pause_AF =>
				if p = '0' and fc2='0' then
					prox_estado <= Fechado;
				else
					prox_estado <= Pause_AF;
				end if;
				
		end case;
	end process;
	
	registrador_estado : process(clk,rst)
	begin
		if rst = '1' then
			estado_atual <= Fechado;
		elsif rising_edge(clk) then
			estado_atual <= prox_estado;  -- Vai p/ o proximo estado
			b_anterior <= b;					-- Armazena o valor de b
		end if;
	end process;
	
	-- Circuito combinacional -> não depende de clock
	logica_saida : process(estado_atual)
	begin
		case estado_atual is
			when Fechado => 
				s0 <= '0';
				s1 <= '1';
			when Pause_FA => 
				s0 <= '0';
				s1 <= '0';
			when Aberto =>
				s0 <= '1';
				s1 <= '0';
			when Pause_AF => 
				s0 <= '0';
				s1 <= '0';
		end case;
	end process;
	
end architecture;