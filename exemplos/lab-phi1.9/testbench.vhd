-- Testbench (INCOMPLETO)

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity testbench is
end testbench;

architecture comportamento of testbench is
	-- Declarando o componente main
	component main is
		generic(
		nbits   :   integer := 8								  -- número de bits
		);
		port(
			Clk, C : in std_logic;
			S, A : in std_logic_vector(nbits-1 downto 0);
			D : out std_logic
		);
	end component;
	
	-- Declarando as constantes e variaveis
	constant nbits : integer := 8;	-- número de bits
	
	signal valor_moeda_a : std_logic_vector(nbits-1 downto 0) := "00000001"; -- R$1
	signal valor_prod_s : std_logic_vector(nbits-1 downto 0) := "00010100"; -- R$20
	
	signal ind_moeda_inserida_c : std_logic := '0';
	constant ind_moeda_inserida_c_val : std_logic_vector(7 downto 0) := x"AA";
	
	signal libera_prod_d : std_logic;
	signal clock : std_logic := '0';
	
begin -- Descrição do sistema
	-- Instanciando a main
	inst_main : main
		port map(
			Clk => clock,
			C => ind_moeda_inserida_c,
			S => valor_prod_s,
			A => valor_moeda_a,
			D => libera_prod_d
		);
		
	
	atribuindo_valores: process (clock)
		variable i : integer := 0;
	begin
		if rising_edge(clock) then
			ind_moeda_inserida_c  <= ind_moeda_inserida_c_val(i);
			i := i + 1;
			if i = 8 then
				i	 := 0;
			end if;
		end if;
	end process;
	
	clock <= not clock after 5 ns;  -- variando o clock
end comportamento;