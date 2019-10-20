library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity projArq is 
	port (
			regA: in std_logic_vector(15 downto 0); -- AUX1
			regB: in std_logic_vector(15 downto 0); -- BARRAMENTO
			op:	in std_logic_vector(0 to 2);
			ula_out: out std_logic_vector(15 downto 0));
end projArq;

architecture ula of projArq is 
begin
	process(regA, regB, op)
	begin
		case op is
			when "000" => ula_out <= regA + regB;
			when "001" => ula_out <= regA - regB;
			when "010" => ula_out <= regA and regB;
			when "011" => ula_out <= regA or regB;
			when others => ula_out <= "0000000000000000";
		end case;
	end process;
end ula;