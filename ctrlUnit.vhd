library IEEE;
USE ieee.Numeric_std.all;
USE ieee.std_logic_1164.all;

ENTITY CTRLUNIT IS
	PORT (	instruction: in std_logic_vector(0 to 7); --Tamanho 16
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
            
END CTRLUNIT;

ARCHITECTURE Behavior OF CTRLUNIT IS
	TYPE State_type IS (DECODE, MOV, MOVi, XCHG0, XCHG1, XCHG2, ARITH0, ARITH1, ARITH2); -- defindo os Estados
	SIGNAL current_state : State_type := DECODE;
    SIGNAL OPCODE: std_logic_vector(0 to 3);
    SIGNAL r1, r2: std_logic_vector(0 to 1);
BEGIN
    OPCODE <= instruction(0 to 3);
    r1 <= instruction(4 to 5);
    r2 <= instruction(6 to 7);
	PROCESS (Clock)
	BEGIN
		if(Clock'EVENT AND Clock = '1')THEN
            CASE current_state IS
                WHEN DECODE =>
                    reg0in <= '0';
                    reg0out <= '0';
                    reg1in <= '0';
                    reg1out <= '0';
                    reg2in <= '0';
                    reg2out <= '0';
                    reg3in <= '0';
                    reg3out <= '0';
                    reg4in <= '0';
                    reg4out <= '0';
                    aux1in <= '0';
                    aux2in <= '0';
                    aux2out <= '0';
                    Li <= '0';
                    CASE OPCODE is
                        WHEN "0001" => current_state <= ARITH0;
                        WHEN "0010" => current_state <= ARITH0;
                        WHEN "0011" => current_state <= ARITH0;
                        WHEN "0100" => current_state <= ARITH0;
                        WHEN "0101" => current_state <= MOV;
                        WHEN "0110" => current_state <= MOVi;
                        WHEN "0111" => current_state <= ARITH0;
                        WHEN "1000" => current_state <= ARITH0;
                        WHEN "1001" => current_state <= ARITH0;
                        WHEN "1010" => current_state <= ARITH0;
                        WHEN "1011" => current_state <= XCHG0;
                        WHEN others => current_state <= DECODE;
                    END case;

                WHEN ARITH0 =>
                    aux1in <= '1';
                    CASE r1 is
                        WHEN "00" => reg0out <= '1';
                        WHEN "01" => reg1out <= '1';
                        WHEN "10" => reg2out <= '1';
                        WHEN "11" => reg3out <= '1';
                        WHEN others => current_state <= DECODE;
                    END CASE;
                    current_state <= ARITH1; 

                WHEN ARITH1 =>
                    aux1in <= '0';
                    reg0out <= '0';
                    reg1out <= '0';
                    reg2out <= '0';
                    reg3out <= '0';
                    if (OPCODE(3) = '1') then
                        CASE r2 is
                            WHEN "00" => reg0out <= '1';
                            WHEN "01" => reg1out <= '1';
                            WHEN "10" => reg2out <= '1';
                            WHEN "11" => reg3out <= '1';
                            WHEN others => current_state <= DECODE;
                        END CASE;
                    else
                        Li <= '1';
                    end if;

                    CASE OPCODE is
                        WHEN "0001" => ULA <= "000";
                        WHEN "0010" => ULA <= "000";
                        WHEN "0011" => ULA <= "001";
                        WHEN "0100" => ULA <= "001";
                        WHEN "0111" => ULA <= "010";
                        WHEN "1000" => ULA <= "010";
                        WHEN "1001" => ULA <= "011";
                        WHEN "1010" => ULA <= "011";
                        WHEN others => ULA <= "UUU"; -- Teste
                    end CASE;
                    aux2in <= '1';
                    current_state <= ARITH2;

                WHEN ARITH2 =>
                    aux2in <= '0';
                    Li <= '0';
                    reg0out <= '0';
                    reg1out <= '0';
                    reg2out <= '0';
                    reg3out <= '0';
                    case r1 is
                        WHEN "00" => reg0in <= '1';
                        WHEN "01" => reg1in <= '1';
                        WHEN "10" => reg2in <= '1';
                        WHEN "11" => reg3in <= '1';
                        WHEN others => current_state <= DECODE;
                    END CASE;
                    aux2out <= '1';
                    current_state <= DECODE;

                WHEN MOV =>
				    case r1 is 
					    when "00" => reg0in <= '1';
					    when "01" => reg1in <= '1';
					    when "10" => reg2in <= '1';
					    when "11" => reg3in <= '1';
					    when others => current_state <= DECODE;
				    end case;
				    case r2 is
					    when "00" => reg0out <= '1';
					    when "01" => reg1out <= '1';
					    when "10" => reg2out <= '1';
					    when "11" => reg3out <= '1';
					    when others => current_state <= DECODE;
				    end case;
					 current_state <= DECODE;
				
                WHEN MOVi =>
                    Li <= '1';
				    case r1 is 
					    when "00" => reg0in <= '1';
					    when "01" => reg1in <= '1';
					    when "10" => reg2in <= '1';
					    when "11" => reg3in <= '1';
					    when others => current_state <= DECODE;
				    end case;
						current_state <= DECODE;
						
                WHEN XCHG0 =>
					 case r1 is
						 when "00" => reg0out <= '1';
					    when "01" => reg1out <= '1';
					    when "10" => reg2out <= '1';
					    when "11" => reg3out <= '1';
					    when others => current_state <= DECODE;
					 end case;
				    reg4in <= '1';
                    current_state<= XCHG1;
                WHEN XCHG1 =>
						  reg0in <= '0';
                    reg0out <= '0';
                    reg1in <= '0';
                    reg1out <= '0';
                    reg2in <= '0';
                    reg2out <= '0';
                    reg3in <= '0';
                    reg3out <= '0';
                    reg4in <= '0';
                    reg4out <= '0';
					 case r1 is
						 when "00" => reg0in <= '1';
					    when "01" => reg1in <= '1';
					    when "10" => reg2in <= '1';
					    when "11" => reg3in <= '1';
					    when others => current_state <= DECODE;
					 end case;
					 case r2 is
						 when "00" => reg0out <= '1';
					    when "01" => reg1out <= '1';
					    when "10" => reg2out <= '1';
					    when "11" => reg3out <= '1';
					    when others => current_state <= DECODE;
					 end case;
                    current_state<= XCHG2;
                WHEN XCHG2 =>
						  reg0in <= '0';
                    reg0out <= '0';
                    reg1in <= '0';
                    reg1out <= '0';
                    reg2in <= '0';
                    reg2out <= '0';
                    reg3in <= '0';
                    reg3out <= '0';
                    reg4in <= '0';
                    reg4out <= '0';
				    reg4out <= '1';
				    case r2 is
						 when "00" => reg0in <= '1';
					    when "01" => reg1in <= '1';
					    when "10" => reg2in <= '1';
					    when "11" => reg3in <= '1';
					    when others => current_state <= DECODE;
					 end case;
					 current_state <= DECODE;
					 
                WHEN others =>
                        current_state <= DECODE;
		    END CASE;
	    END IF;
    END PROCESS;
END Behavior;