-- D FilpFlop 
library ieee;
use ieee.std_logic_1164.all;

entity dff is 
port(
clk: in std_logic;
rst: in std_logic;
din: in std_logic;
dout: out std_logic
);
end entity;

architecture dff_arch of dff is 
signal l : std_logic := '0';
begin 
	process(clk,rst)
	begin
		if(rst='1')then
			dout<='0';
		elsif(rising_edge(clk)) then 
			l <= din;
		end if;
	dout<=l;
	end process;
end architecture;
