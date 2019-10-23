LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.components.all ;


ENTITY CPU IS 
	PORT (
		Clock : IN STD_LOGIC ;	
		-- for the unit control
		Instruction: IN STD_LOGIC_VECTOR(0 to 7);
		
      
      Li: out std_logic;
      ULA: out STD_LOGIC_VECTOR(0 to 2);
		R0test,R1test,R2test,R3test,R4test,Bustest: out STD_LOGIC_VECTOR(15 Downto 0);
		R0intest,R1intest,R2intest,R3intest,R4intest,R0outtest,R1outtest,R2outtest,R3outtest,R4outtest: out std_logic
		-- end
	   -- for the registers
		
		
		--end
		
		
	);

END CPU;


ARCHITECTURE Behavior OF CPU IS
	
	SIGNAL Barramento: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reg0out, reg0in: std_logic;
	SIGNAL reg1out, reg1in: std_logic;
   SIGNAL reg2out, reg2in: std_logic;
   SIGNAL reg3out, reg3in: std_logic;
   SIGNAL reg4out, reg4in: std_logic;
	SIGNAL upCodeout: std_logic;
	SIGNAL aux1in: std_logic;
   SIGNAL aux2in, aux2out: std_logic;
	SIGNAL R0, R1,R2,R3,R4, AUX1, AUX2,Aux3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL Imediato : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
	
	SIGNAL op: std_logic_vector(0 to 2);

BEGIN


Imediato(0) <= Instruction(7);
Imediato(1) <= Instruction(6);

unidadeControle : CTRLUNIT PORT MAP (Instruction, Clock, reg0out, reg0in, reg1out, reg1in, reg2out, reg2in, reg3out, reg3in, reg4out, reg4in, aux1in,aux2in, aux2out, upCodeout, op );

reg0: registrador PORT MAP(Barramento, reg0in , Clock, R0);
reg1: registrador PORT MAP(Barramento, reg1in , Clock, R1);
reg2: registrador PORT MAP(Barramento, reg2in , Clock, R2);
reg3: registrador PORT MAP(Barramento, reg3in , Clock, R3);
reg4: registrador PORT MAP(Barramento, reg4in , Clock, R4);
R0test <= R0;
R1test <= R1;
R2test <= R2;
R3test <= R3;
R4test <= R4;
R0intest<=Reg0in;
R1intest<=Reg1in;
R2intest<=Reg2in;
R3intest<=Reg3in;
R4intest<=Reg4in;
R0outtest<=Reg0out;
R1outtest<=Reg1out;
R2outtest<=Reg2out;
R3outtest<=Reg3out;
R4outtest<=Reg4out;
temp1: registrador PORT MAP(Barramento, aux1in , Clock, AUX1);
temp2: registrador PORT MAP(Aux2, aux2in , Clock, AUX3);
Bustest <= Barramento;


--tristates
triState0: trin PORT MAP(R0, reg0out, Barramento);triState1: trin PORT MAP(R1, reg1out, Barramento);
triState2: trin PORT MAP(R2, reg2out, Barramento);
triState3: trin PORT MAP(R3, reg3out, Barramento);
triState4: trin PORT MAP(R4, reg4out, Barramento);

triAux2: trin PORT MAP(AUX3, aux2out, Barramento);

triUPCODE: trin PORT MAP(Imediato, upCodeout, Barramento);

-- ULA

UndLA : projArq PORT MAP(AUX1, Barramento, op, AUX2);
ULA<=op;

END Behavior;






