LIBRARY ieee;
Use ieee.std_logic_1164.all;

ENTITY registrador IS
	GENERIC(N : Integer :=16);
	PORT(
			R					:IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0); -- barramento
			Rin, Clock		:IN	STD_LOGIC; -- Rin sinal se receber ele ou nao
			Q					:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0)); -- Rout
END registrador;
			
ARCHITECTURE Behavior OF registrador IS
BEGIN
	PROCESS
	BEGIN
		
		WAIT UNTIL Clock'EVENT AND Clock = '1';
		if Rin = '1' THEN
			Q<=R;
		END IF;
	END PROCESS;
END Behavior;