LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY contador99 IS 
	PORT
	(	ck :  IN  STD_LOGIC;
		hex0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		hex1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END contador99;

ARCHITECTURE contagem OF contador99 IS 
  COMPONENT conta
  	PORT(ckin  : IN STD_LOGIC;
  		ckout : OUT STD_LOGIC;
  		vcont : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
  END COMPONENT;
  COMPONENT disp7
	  PORT(dec  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		  disp : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
  END COMPONENT;
  SIGNAL	ckdez :  STD_LOGIC;
  SIGNAL	dez   :  STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL	uni   :  STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN 
  conta_uni : conta
  PORT MAP(ckin  => ck,
		 ckout => ckdez,
		 vcont => uni);
  
  conta_dez : conta
  PORT MAP(ckin  => ckdez,
		 vcont => dez);
  
  disp_uni : disp7
  PORT MAP(dec  => uni,
		 disp => hex0);
  
  disp_dez : disp7
  PORT MAP(dec  => dez,
		 disp => hex1);
END contagem;
