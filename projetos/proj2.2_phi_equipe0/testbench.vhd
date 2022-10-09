-- Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testbench is
end testbench;

architecture comportamento of testbench is
	-- Declaração do componente sel_mostrador_relogio
	component sel_mostrador_relogio
	port(													
		clk, rst, b: in std_logic;   		-- b => Indica o acionamento do butão
		s0, s1 : out std_logic				-- s0, s1 => Indicam o estado
 	);
	end component;
	
	-- Declaração das constantes e variaveis 
	signal clk, b, s0, s1 : std_logic := '0';
	signal rst : std_logic := '1';
	
	constant b_valores : std_logic_vector(0 to 54) := "0101010101000001111111111011111111011000001111001100111";

begin 
	-- Instanciando do componente sel_mostrador_relogio
	inst_selMostradorRelogio: sel_mostrador_relogio
	port map(
		clk => clk,
		rst => rst,
		b => b,
		s0 => s0,
		s1 => s1
	);
	
	-- processo p/ gerar as entradas
	gerador_entrada: process(clk, rst)
		variable i : integer := 0;
	begin
		if rst = '1' then
			i := 0;
			b <= b_valores(i);
		elsif rising_edge(clk) then
			b <= b_valores(i);
			i := i + 1;
			
			if i = b_valores'length then
				i := 0;
			end if;
		end if;	
	end process;
	
	clk <= not clk after 5ns;
	rst <= '0' after 1us;
	
end comportamento;