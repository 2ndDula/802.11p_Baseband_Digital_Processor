-- 16-QAM Mapper

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity mapper is
port (	clk, rst, enable, vdd, vss  : in  std_logic;
	input : in  std_logic_vector(3 downto 0);
    	Iout, Qout  : out std_logic_vector(15 downto 0));
end mapper;
 
architecture behavioral of mapper is
 
begin
 
  process (clk, rst)
    constant pos1 : std_logic_vector(15 downto 0) := X"143D";
    constant neg1 : std_logic_vector(15 downto 0) := X"EBC3";
    constant pos3 : std_logic_vector(15 downto 0) := X"3CB7";
    constant neg3 : std_logic_vector(15 downto 0) := X"C349";
  begin
    if rst = '1' then
      Iout <= (others => '0');
      Qout <= (others => '0');
    elsif rising_edge(clk) and enable = '1' then
      case input is
        when "0000" =>
          Iout <= neg3;
          Qout <= neg3;
        when "0001" =>
          Iout <= neg3;
          Qout <= neg1;
        when "0010" =>
          Iout <= neg3;
          Qout <= pos3;
        when "0011" =>
          Iout <= neg3;
          Qout <= pos1;
        when "0100" =>
          Iout <= neg1;
          Qout <= neg3;
        when "0101" =>
          Iout <= neg1;
          Qout <= neg1;
        when "0110" =>
          Iout <= neg1;
          Qout <= pos3;
        when "0111" =>
          Iout <= neg1;
          Qout <= pos1;
        when "1000" =>
          Iout <= pos3;
          Qout <= neg3;
        when "1001" =>
          Iout <= pos3;
          Qout <= neg1;
        when "1010" =>
          Iout <= pos3;
          Qout <= pos3;
        when "1011" =>
          Iout <= pos3;
          Qout <= pos1;
        when "1100" =>
          Iout <= pos1;
          Qout <= neg3;
        when "1101" =>
          Iout <= pos1;
          Qout <= neg1;
        when "1110" =>
          Iout <= pos1;
          Qout <= pos3;
        when "1111" =>
          Iout <= pos1;
          Qout <= pos1;
        when others =>
          Iout <= (others => '0');
          Qout <= (others => '0');
      end case;
    end if;
  end process;
 
end behavioral;