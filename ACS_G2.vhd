library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_data_types.all;

entity ACS_G2 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 1);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(3 downto 0);
PM_out : out vector_array(0 To 3)
);
end entity;

architecture behavioral of ACS_G2 is 
signal PM_branches: vector_array(0 to 3);
Signal in_bits : std_logic_vector(3 downto 0);
begin
B_1:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	    
	begin
		if (rst = '1') then 
			PM_branches(0) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(0);
				in_bits(0) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(0) <= new_PM;
				data_out(0)<= in_bits(0);
		end if;
	end process;	
B_2:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(1) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(0);
				in_bits(1) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(1) <= new_PM;
				data_out(1)<= in_bits(1);
		end if;
	end process;
B_3:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(2) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(1);
				in_bits(2) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(2) <= new_PM;
				data_out(2)<= in_bits(2);
		end if;
	end process;
B_4:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(3) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(1);
				in_bits(3) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(3) <= new_PM;
				data_out(3)<= in_bits(3);
		end if;
	end process;
process(clk)
begin
	if (rst = '1') then 
			PM_out <= (others => "0000000");
	elsif (rising_edge(clk)) then 
			PM_out <= PM_branches;
	end if ;
end process;
end architecture;
