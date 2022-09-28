LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY conta IS
PORT (
	ckin  : IN  STD_LOGIC;
	vcont : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
	ckout : OUT STD_LOGIC
	);
END conta;
ARCHITECTURE soma OF conta IS
  SIGNAL vcont_s : STD_LOGIC_VECTOR (3 DOWNTO 0) := "0000";
  SIGNAL ckout_s : STD_LOGIC := '0';
BEGIN
  vcont <= vcont_s ;
  ckout <= ckout_s;
  PROCESS (ckin)
  BEGIN
    IF ckin'EVENT and ckin = '0' THEN
      IF vcont_s /= 9 THEN
        vcont_s <= vcont_s + 1;
        ckout_s <= '1';
      ELSE
        vcont_s <= "0000";
        ckout_s <= '0';
      END IF;
    END IF;
  END PROCESS;
END soma;
