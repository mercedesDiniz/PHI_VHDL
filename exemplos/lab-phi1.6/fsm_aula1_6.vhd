library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fsm_aula1_6 is
	port(
		clk, rst, w	: in  std_logic;
		z : out std_logic
	);
end fsm_aula1_6;

architecture comportamento of fsm_aula1_6 is
	type tipo_estado is (A, B, C);
	signal prox_estado, estado : tipo_estado := A;
	
	-- constant A : std_logic_vector(1 downto 0) := "00";
	-- constant B : std_logic_vector(1 downto 0) := "01";
	-- constant C : std_logic_vector(1 downto 0) := "10";	
	-- signal prox_estado, estado: std_logic_vector(1 downto 0) := A;/
begin
	-- Circuito combinacional -> não depende de clock
	logica_proximo_estado : process(estado, w)
	begin
		case estado is
			when A =>
				if w = '0' then
					prox_estado <= A;
				else
					prox_estado <= B;
				end if;
			when B => 
				if w = '0' then
					prox_estado <= A;
				else
					prox_estado <= C;
				end if;
			when C =>
				if w = '1' then
					prox_estado <= C;
				else
					prox_estado <= A;
				end if;
		end case;
	end process;
	
	registrador_estado : process(clk, rst)
	begin
		if rst = '1' then
			estado <= A;
		elsif rising_edge(clk) then
			estado <= prox_estado;
		end if;
	end process;
	
	-- Circuito combinacional -> não depende de clock
	logica_saida : process(estado)
	begin
		case estado is
			when A => z <= '0';
			when B => z <= '0';
			when C => z <= '1';
		end case;
	end process;
	
end architecture;