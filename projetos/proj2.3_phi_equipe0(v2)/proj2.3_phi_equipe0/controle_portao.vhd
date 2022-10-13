-- Projeto 2.3 - PHI
-- Máquina de estados que controla os processos de abertura e fechamento de um portão. Se o botão é pressionado uma vez, o portão fecha, se é 
-- pressionado novamente, o portão abre. Nos processos de abertura ou fechamento, se houver algo no percurso do portão, indicado pelo sensor de 
-- presença P, o portão para o seu movimento, e retoma quando não houver mais nada no seu percurso. 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controle_portao is
	-- Definindo as portas de entrada e saida
	port(															-- sinalizadores de fins de curso: fc1,fc2 => 10 = fechado | 01= aberto
		clk, rst, fc1 ,fc2, b, p: in std_logic;		-- b => Indica o comando do botão | p => Sinalizador de presença
		s0, s1 : out std_logic
	);
end controle_portao;

architecture comportamento of controle_portao  is 
	-- Região de declaração:
	type tipo_estado is (Abrindo, Aberto,BloqueadoA, Fechando, Fechado, BloqueadoF); -- Estados possiveis
	signal prox_estado, estado_atual : tipo_estado := Fechando;
	signal b_anterior : std_logic := '0';		-- Variavel auxiliar (buffer do valor de b)
	
begin -- Descrição do sistema

	-- Circuito combinacional -> não depende de clock
	logica_proximo_estado : process(estado_atual, b, b_anterior, p, fc1, fc2)
	begin
		case estado_atual is
			when Fechando =>
				if	p = '1' and fc1 = '0'then
					prox_estado <= BloqueadoF;
				elsif fc1 = '1' then
					prox_estado <= Fechado;
				else 
					prox_estado <= Fechando;
				end if;
				
			when BloqueadoF =>
				if p = '0' and fc1 = '0' then
					prox_estado <= Fechando;
				else
					prox_estado <= BloqueadoF;
				end if;	
			
			when Fechado =>
				if b = '1' and b_anterior = '0' and fc1 = '0'then
					prox_estado <= Abrindo;
				else
					prox_estado <= Fechado;
				end if;
			
			when Abrindo =>
				 if	p = '1' and fc2 = '0' then
					prox_estado <= BloqueadoA;
				elsif fc2 = '1' then
					prox_estado <= Aberto;
				else 
					prox_estado <= Abrindo;
				end if;
				
			when BloqueadoA =>
				if p = '0' and fc2 = '0' then
					prox_estado <= Abrindo;
				else
					prox_estado <= BloqueadoA;
				end if;	
			
			when Aberto =>
				if b = '1' and b_anterior = '0' and fc2 = '0'then
					prox_estado <= Fechando;
				else
					prox_estado <= Aberto;
				end if;

				
		end case;
	end process;
	
	registrador_estado : process(clk,rst)
	begin
		if rst = '1' then
			estado_atual <= Fechando;
		elsif rising_edge(clk) then
			estado_atual <= prox_estado;  -- Vai p/ o proximo estado
			b_anterior <= b;					-- Armazena o valor de b
		end if;
	end process;
	
	-- Circuito combinacional -> não depende de clock
	logica_saida : process(estado_atual)
	begin
		case estado_atual is
			when Fechando => 
				s0 <= '1';
				s1 <= '0';
			
			when Abrindo => 
				s0 <= '0';
				s1 <= '1';
				
			when Fechado => 
				s0 <= '0';
				s1 <= '0';
			
			when Aberto => 
				s0 <= '0';
				s1 <= '0';
			
			when BloqueadoA =>
				s0 <= '0';
				s1 <= '0';
				
			when BloqueadoF => 
				s0 <= '0';
				s1 <= '0';			
		end case;
	end process;
	
end architecture;
