library ieee;
use ieee.std_logic_1164.all;

entity fsm_aula1_6_tb is
end fsm_aula1_6_tb;

architecture testbench of fsm_aula1_6_tb is
	component fsm_aula1_6
	port(
		clk, rst, w	: in  std_logic;
		z : out std_logic
	);
	end component;
	
	signal clk, w, z : std_logic := '0';
	signal rst : std_logic := '1';
	
	constant w_array : std_logic_vector(0 to 28)
		:= "00010000111001100000111100010";
begin
	
	instancia: fsm_aula1_6
	port map(
		clk => clk,
		rst => rst,
		w => w,
		z => z
	);
	
	gerador_entrada : process(clk, rst)
		variable i : integer := 0;
	begin
		if rst = '1' then
			i := 0;
			w <= w_array(i);
		elsif rising_edge(clk) then
			w <= w_array(i);
			i := i + 1;
			
			if i = w_array'length then
				i := 0;
			end if;
		end if;
	end process;
	
	clk <= not clk after 5 ns;
	rst <= '0' after 1 us;
end testbench;