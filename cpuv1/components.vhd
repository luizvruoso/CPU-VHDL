LIBRARY ieee;
Use ieee.std_logic_1164.all;


PACKAGE components is 

COMPONENT registrador IS
	GENERIC(N : Integer :=16);
	PORT( R					:IN	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			Rin, Clock		:IN	STD_LOGIC;
			Q					:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END component;
			
COMPONENT projArq is 
	port (regA: in std_logic_vector(0 to 15);
			regB: in std_logic_vector(0 to 15);
			op:	in std_logic_vector(0 to 2);
			ula_out: out std_logic_vector(0 to 15));
end COMPONENT;

COMPONENT CTRLUNIT IS
	PORT (instruction: in std_logic_vector(0 to 15); --Tamanho 16
            Clock: in std_logic;
            reg0out, reg0in: out std_logic;
            reg1out, reg1in: out std_logic;
            reg2out, reg2in: out std_logic;
            reg3out, reg3in: out std_logic;
            reg4out, reg4in: out std_logic;
            aux1in: out std_logic;
            aux2in, aux2out: out std_logic;
            Li: out std_logic;
            ULA: out std_logic_vector(0 to 2));
            
END COMPONENT;


COMPONENT trin IS	
GENERIC (N: INTEGER:= 16);
	
PORT( 	X :IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);

      	E :IN STD_LOGIC;
	     
	F :OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));

END COMPONENT;

END components;
