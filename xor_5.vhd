-- 5 inputs Xor 
library ieee;
use ieee.std_logic_1164.all;

entity xor_5 is 
port(
din : in std_logic_vector(4 downto 0);
dout : out std_logic
);
end entity;

architecture behavioral of xor_5 is 
begin
dout <= din(0) xor din(1) xor din(2) xor din(3) xor din(4);
end architecture;