-- Testbench

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use std.textio.all;
USE ieee.std_logic_unsigned.all ;

entity testbench is
end testbench;

architecture comportamento of testbench is
	-- Declarando o componente main
	component maquina_de_vendas is
	port(
		Clk, M, B1, B2 : in std_logic;
		V, R1, R2 : in std_logic_vector(7 downto 0);
		F1, F2, NT : out std_logic;
		VT : out std_logic_vector(7 downto 0)
	);
	end component;
	
	-- Declarando as constantes e variaveis
	signal Clk, M_aux, B1_aux, B2_aux, F1_aux, F2_aux, NT_aux : std_logic := '0';
	signal VT_aux : std_logic_vector(7 downto 0); 
	constant preco_r1 :  std_logic_vector(0 to 7) := "01100100"; -- custo do produto 1 - R$ 1 = 100 centavos 
	constant preco_r2 :  std_logic_vector(0 to 7) := "11111010"; -- custo do produto 2 - R$ 2,50 = 250 centavos
	constant m_valores : std_logic_vector(0 to 15) := "0101010101000001";
	constant b1_valores : std_logic_vector(0 to 15) := "0000000000000000";
	constant b2_valores : std_logic_vector(0 to 15) := "1111111111111111";
	
	signal valor_moeda : std_logic_vector(7 downto 0);
	
	
	--signal clock : std_logic := '0';
	
begin -- Descrição do sistema
	
	-- Instanciando a main
	int_maquina_de_vendas : maquina_de_vendas 
		port map(
		Clk => Clk,
		B1 => B1_aux,
		B2 => B2_aux,
		R1 => preco_r1,
		R2 => preco_r2,
		M => M_aux,
		V => valor_moeda,
		F1 => F1_aux,
		F2 => F2_aux,
		NT => NT_aux,
		VT => VT_aux
		);
		
	-- processo p/ gerar as entradas
	gerador_entrada: process(Clk)
		variable i: integer := 0;
	begin
		if rising_edge(Clk) then
			M_aux <= m_valores(i);
			B1_aux <= b1_valores(i);
			B2_aux <= b2_valores(i);
			i := i + 1;
			
			if i = m_valores'length then
				i := 0;
			end if;
			
		end if;	
	end process;
		
		-- Processo 02: ler os valores das entradas A e B do arquivo de texto e atribui para os respctivos inputs
	lendo_entradas: process (M_aux)
		file F: TEXT open READ_MODE is "C:\Users\User\Documents\UFPA\6 Semestre\Projeto de Hardware e Interfaceamento\PHI_VHDL\projetos\proj3_phi_equipe0\entradas.txt";
		variable L: LINE;
		variable entrada : integer;
	begin
		if M_aux = '1' then
			if not endfile(F) then
				READLINE(F, L);
				READ(L, entrada);
				valor_moeda <= std_logic_vector(to_unsigned(entrada, 8));
			else
				valor_moeda <= "00000000";
			end if;
		end if;
	end process;
	
	Clk <= not Clk after 5 ns;  -- variando o clock

end comportamento;