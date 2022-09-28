-- Projeto 01 - PHI
-- Testbench para avaliar a funcionalidade desenvolvida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity testbench is
end testbench;

architecture test of testbench is

	-- Declarando o componente main
	component main is
		generic(
		nbits   :   integer := 4								  -- número de bits
		);
		port(
			A, B : in std_logic_vector(nbits-1 downto 0);
			sel_op : in std_logic;
			resultado : out std_logic_vector(nbits-1 downto 0);
			Cout_msb : out std_logic
		);
	end component;
	
	-- Declarando as constantes e variaveis
	constant nbits : integer := 4;	-- número de bits
	
	constant somasub_val : std_logic_vector(63 downto 0) := x"0F0F0F0F0F0F0F0F";	
	signal input_a, input_b, result : std_logic_vector(nbits-1 downto 0); 
	signal sel_somasub : std_logic := '0';
	signal cout_msb : std_logic;
	signal clock : std_logic := '0';
	
begin
	-- Instanciando a main
	dut : main
		port map(
			A => input_a,
			B => input_b,
			sel_op => sel_somasub,
			resultado => result,
			Cout_msb => cout_msb
		);
		
	-- Processo 01: seleciona se a operação será soma ou subtração
	selecionando_op: process (clock)
		variable ptr_mux : integer := 0;
	begin
		if rising_edge(clock) then
			sel_somasub  <= somasub_val(ptr_mux);
			ptr_mux := ptr_mux + 1;
			if ptr_mux = 64 then
				ptr_mux	 := 0;
			end if;
		end if;
	end process;
	
	-- Processo 02: ler os valores das entradas A e B do arquivo de texto e atribui para os respctivos inputs
	lendo_entradas: process (clock)
		file F: TEXT open READ_MODE is "C:\Users\Mercedes\Desktop\proj01v2_phi_equipe0\arq_entrada_saida\entradas.txt";
		variable L: LINE;
		variable entrada : integer;
	begin
		if rising_edge(clock) then
			if not endfile(F) then
				READLINE(F, L);
				READ(L, entrada);
				input_a <= std_logic_vector(to_unsigned(entrada, nbits));
				
				READLINE(F, L);
				READ (L, entrada);
				input_b <= std_logic_vector(to_unsigned(entrada, nbits));
				
			end if;
		end if;
	end process;
	
	-- Processo 03: escreve o resultado e qual foi a respectiva operação no arquivo de texto
	armazenando_resultados: process (clock)
		file F: TEXT open WRITE_MODE is "C:\Users\Mercedes\Desktop\proj01v2_phi_equipe0\arq_entrada_saida\saida.txt";
		variable L: LINE;
	begin
		if rising_edge(clock) then
			WRITE (L, to_bit(cout_msb));
			WRITE (L, ' ');
			WRITE (L, to_integer(unsigned(result)));
			WRITE (L, ' ');
			WRITE (L, to_bit(sel_somasub));
			WRITELINE (F, L);
		end if;
	end process;
	
	clock <= not clock after 5 ns;  -- variando o clock
	
end test;
