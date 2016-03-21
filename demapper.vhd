-- 16-QAM Demapper

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity demapper is
port (	clk, rst, enable, vdd, vss : in  std_logic;
	Iin, Qin : in  std_logic_vector(15 downto 0);
    	output  : out std_logic_vector(3 downto 0));
end demapper;
 
architecture behavioral of demapper is
 
begin
 
  process (clk, rst)
    constant pos1 : std_logic_vector(15 downto 0) := X"143D";
    constant neg1 : std_logic_vector(15 downto 0) := X"EBC3";
    constant pos3 : std_logic_vector(15 downto 0) := X"3CB7";
    constant neg3 : std_logic_vector(15 downto 0) := X"C349";
  begin
    if rst = '1' then
      output <= (others => '0');
    elsif rising_edge(clk) and enable = '1' then
      if Iin = neg3 and Qin = neg3 then
	output <= "0000";
      elsif Iin = neg3 and Qin = neg1 then
	output <= "0001";
      elsif Iin = neg3 and Qin = pos3 then
	output <= "0010";
      elsif Iin = neg3 and Qin = pos1 then
	output <= "0011";
      elsif Iin = neg1 and Qin = neg3 then
	output <= "0100";
      elsif Iin = neg1 and Qin = neg1 then
	output <= "0101";
      elsif Iin = neg1 and Qin = pos3 then
	output <= "0110";
      elsif Iin = neg1 and Qin = pos1 then
	output <= "0111";
      elsif Iin = pos3 and Qin = neg3 then
	output <= "1000";
      elsif Iin = pos3 and Qin = neg1 then
	output <= "1001";
      elsif Iin = pos3 and Qin = pos3 then
	output <= "1010";
      elsif Iin = pos3 and Qin = pos1 then
	output <= "1011";
      elsif Iin = pos1 and Qin = neg3 then
	output <= "1100";
      elsif Iin = pos1 and Qin = neg1 then
	output <= "1101";
      elsif Iin = pos1 and Qin = pos3 then
	output <= "1110";
      elsif Iin = pos1 and Qin = pos1 then
	output <= "1111";
      else output <= (others => '0');	
      end if;
    end if;
  end process;
 
end behavioral;