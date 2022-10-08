-- Projeto 2.2 - PHI
-- Seletor do mostrador de um relógio de pulso pode fornecer uma de quatro informações: hora atual, alarme, cronometro e data, que são controladas 
-- por duas saídas do sistema digital, s0 e s1.

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity sel_mostrador_relogio is 
	-- Definindo as portas de entrada e saida	
	port(													
		clk, rst, b: in std_logic;   		-- b => Indicam o acionamento do butão
		s0, s1 : out std_logic				-- s0, s1 => Indicam o estado
 	);
end sel_mostrador_relogio;

architecture comportamento of sel_mostrador_relogio is
	-- Região de de claração:
	type tipo_estado is (H, A, C, D); 			-- H = Hora atual, A = Alarme, C = Cronometro, D = Data
	signal prox_estado, estado_atual : tipo_estado := H;
	signal b_anterior : std_logic := '0';		-- Variavel auxiliar (buffer do valor de b)

begin -- Descrição do sistema
	-- Circuito combinacional -> não depende de clock
	logica_proximo_estado : process(estado_atual, b, b_anterior)
	begin
		case estado_atual is
			when H =>
				if b_anterior = '0' and b = '1'then
					prox_estado <= A;
				else 
					prox_estado <= H;
				end if;	
			When A =>
				if b_anterior = '0' and b = '1' then
					prox_estado <= C;
				else 
					prox_estado <= A;
				end if;
			When C =>
				if b_anterior = '0' and b = '1' then
					prox_estado <= D;
				else 
					prox_estado <= C;
				end if;
			When D =>
				if b_anterior = '0' and b = '1' then
					prox_estado <= H;
				else 
					prox_estado <= D;
				end if;	
		end case;
	end process;
	
	registrador_estado : process(clk,rst)
	begin
		if rst = '1' then
			estado_atual <= H;
		elsif rising_edge(clk) then
			estado_atual <= prox_estado;  -- Vai p/ o proximo estado
			b_anterior <= b;					-- Armazena o valor de b
		end if;
	end process;
	
	-- Circuito combinacional -> não depende de clock
	logica_saida : process(estado_atual)
	begin
		case estado_atual is
			when H => 
				s0 <= '0';
				s1 <= '0';
			when A => 
				s0 <= '0';
				s1 <= '1';
			when C =>
				s0 <= '1';
				s1 <= '0';
			when D => 
				s0 <= '1';
				s1 <= '1';
		end case;
	end process;
	
	

end architecture;