-- Maquina de Vendas (Bloco de Controlador / Maquina de Estados)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BC is
	-- Definndo as portas de entrada e saida
	port(
		clk, 
	);
end BC

architecture comportamento of BC is
	-- Região de declaração
	type tipo_estado is (Inicial, espera_p1, Soma_p1, Cal_troco_p1, Libera_p1, espera_p2, Soma_p2, Cal_troco_p2, Libera_p2); -- Estados possiveis
	signal prox_estado, estado_atual : tipo_estado := Inicial;
	
begin -- Descrição do sistema

end architecture;