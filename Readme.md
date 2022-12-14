# Projetos de Hadware e Interfaceamento (VHDL)
Este repositório concentra todo o material da componente curricular PHI, para auxiliar futuras implementações.

## IDE e Material
- [Quartus Lite (Download)](https://www.intel.com.br/content/www/br/pt/products/details/fpga/development-tools/quartus-prime/resource.html)

- Simuldor Modelsim/Questasim [(licença)](https://www.intel.com/content/www/us/en/support/programmable/licensing/support-center.html)

- [Documentação de referencia](https://redirect.cs.umbc.edu/portal/help/VHDL/VHDL-Handbook.pdf)

## Projetos de PHI
1. **Projeto de sistemas digitais combinacionais em VHDL:**  
Um somador de múltiplos bits configuravel para permitir selecionar soma ou subtração (usando complemento de 2), a parti de um somador completo de 1 bit projetado com portas lógicas (usando funções lógicas da biblioteca std_logic_1164).

2. **Projetos de Máquinas de Estado:**  
2.1) **Problema 01:** Fazer a engenharia reversa do comportamento do circuito sequencial.  
![Circuito Combinacional](doc/circuito_proj2_1.png)  

2.2) **Problema 02:** O mostrador de um relógio de pulso pode fornecer uma de quatro informações: hora atual, alarme, cronometro e data, que são controladas por duas saídas do sistema digital, s0 e s1. Assume que s0 e s1 controlam um multiplexador que seleciona uma das quatro informações que vêm de um fonte externa ao sistema digital projetado. Quando um botão B é pressionado, o próximo item da sequência é exibido. Crie um diagrama de estados que descreva o comportamento. Assegure-se que ocorrerá o avanço de apenas um item, independente de quanto tempo o botão permanece pressionado, ou seja, após avançar para o próximo item da sequência, deve-se aguardar o botão ser solto. Use nomes curtos mas descritivos para representar cada estado. Faça com que a exibição da hora atual seja o estado inicial.  

2.3) **Problema 03:** Deseja-se projetar uma máquina de estados que controla os processos de abertura e fechamento de um portão. A máquina obedece a um único comando de um botão B. Se o botão é pressionado uma vez, o portão fecha, se é pressionado novamente, o portão abre. Nos processos de abertura ou fechamento, se houver algo no percurso do portão, indicado pelo sensor de presença P, o portão para o seu movimento, e retoma quando não houver mais nada no seu percurso. Há ainda dois sinais que indicam os fins de curso, ou fim do processo de abertura e de fechamento, FC1 e FC2, respectivamente, que indicam à máquina de estados que é possível finalizar o processo. A máquina de estados gera dois sinais de saída S0 e S1 que controlam os processos de abertura e de fechamento, respectivamente. A inicialização do sistema é feita considerando que o portão está fechado. Entretanto, pode ocorrer por exemplo uma situação de exceção, como uma falta de energia, logo, não deve-se assumir que o portão está fechado, ou seja, deve-se, após a inicialização fechar o portão para deixar o sistema em um estado conhecido.


3. **Projetos em RTL com BO + BC - Máquina de vendas melhorada**  
Crie um sistema digital para melhorar a máquina de vendas da aula anterior. A máquina deve permitir a escolha de dois tipos de refrigerante e também fornecer troco ao consumidor. Um detector de moedas fornece ao circuito um sinal m de um bit que torna-se 1 durante 1 ciclo de clock quando uma moeda é detectada, e também a quantia v de oito bits, com o valor da moeda em centavos. Duas entradas r1 e r2 de oito bits indicam o custo dos dois produtos. A escolha do produto é controlada por dois botões b1 e b2 que, quando pressionados, ficam em 1 durante um ciclo de clock. Se moedas suficientes foram inseridas, então o sistema coloca um dos bits de saída
f1 ou f2 em 1 durante um ciclo de clock para fornecer o produto escolhido. Se for necessário troco, o sistema colocará um bit nt em 1 durante um ciclo de clock e também indicará na saída vt de oito bits o valor necessário do troco.

4. **Projeto de Circuito de Condicionamento**
4.1) Pesquisar o funcionamento algum sensor que deve ser escolhido (apresentar a teoria de funcionamento);
4.2) Especificações básicas do circuito de condicionamento do sensor escolhido (modelar o circuito elétrico de condicionamento para este sensor, modelar um ruído gerado pelo sensor que deve ser eliminado, e considerar que o sinal deve ser amostrado por um conversor AD);
4.3) Projeto do circuito de condicionamento (com pelo menos um amplificador e um filtro, sendo que deve operar nas faixas de operação do conversor AD hipotético);

## Links Úteis:
- [Curso VHDL (canal Felipe Pfirmer)](https://www.youtube.com/playlist?list=PLYE3wKnWQbHDdnb3FsDkNx2tj8xoQAPtN)