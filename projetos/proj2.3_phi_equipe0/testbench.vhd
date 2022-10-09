-- Testbench
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testbench is
end testbench;

architecture comportamento of testbench is
	-- Declaração do componente controle_portao
	component controle_portao
	port(
		clk, rst, b, p: in std_logic;		-- b => Indica o comando do botão | p => Sinalizador de presença
		s0, s1 : out std_logic
	);
	end component;
	
	-- Declaração das constantes e variaveis 
	signal clk, b, p, s0, s1 : std_logic := '0';
	signal rst : std_logic := '1';
	
	constant b_valores : std_logic_vector(0 to 54) := "0101010101000001111111111011111111011000001111001100111";
	constant p_valores : std_logic_vector(0 to 54) := "1101001101010101111110000001110101010000110101010101010";
	
begin 
	-- Instanciando do componente controle_portao
	inst_controlePortao: controle_portao
	port map(
		clk => clk,
		rst => rst,
		b => b,
		p => p,
		s0 => s0,
		s1 => s1
	);
	
	-- processo p/ gerar as entradas
	gerador_entrada: process(clk, rst)
		variable i, j : integer := 0;
	begin
		if rst = '1' then
			i := 0;
			j := 0;
			b <= b_valores(i);
			p <= p_valores(j);
		elsif rising_edge(clk) then
			b <= b_valores(i);
			p <= p_valores(j);
			
			i := i + 1;
			j := j + 1;
			
			if i = b_valores'length then
				i := 0;
			end if;
			
			if j = p_valores'length then
				j := 0;
			end if;
			
		end if;	
	end process;
	
	clk <= not clk after 5ns;
	rst <= '0' after 1us;
	
end comportamento;