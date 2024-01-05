library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
	port (clk   : in std_logic;  
			clear : in std_logic; 
			salida: out std_logic_vector (7 downto 0));
end contador;

architecture Behavioral of contador is
	signal cuenta: std_logic_vector (7 downto 0) :="00000000";

begin
    output: process (clk,clear) 
		begin 

			if (clear='0') then 
				salida<="00000000"; 
				cuenta<="00000000"; 
				elsif (clk'event and clk='1') then 
				cuenta<=(cuenta+1); 
				salida<=cuenta; 
			end if;  
	end process; 

end Behavioral;