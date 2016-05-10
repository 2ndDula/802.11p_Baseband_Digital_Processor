library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_data_types.all;

entity ACS is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 63);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(63 downto 0);
PM_out : out vector_array(0 To 63);
Previous_state : out mem_0
);
end entity;

architecture behavioral of ACS is 
signal PM_branches: vector_array(0 to 127);
Signal in_bits : std_logic_vector(127 downto 0);
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
		end if;
	end process;
B_5:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(4) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(2);
				in_bits(4) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(4) <= new_PM;
		end if;
	end process;
B_6:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(5) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(2);
				in_bits(5) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(5) <= new_PM;
		end if;
	end process;
B_7:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(6) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(3);
				in_bits(6) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(6) <= new_PM;
		end if;
	end process;
B_8:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(7) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(3);
				in_bits(7) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(7) <= new_PM;
		end if;
	end process;
B_9:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(8) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(4);
				in_bits(8) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(8) <= new_PM;
		end if;
	end process;
B_10:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(9) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(4);
				in_bits(9) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(9) <= new_PM;
		end if;
	end process;
B_11:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(10) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(5);
				in_bits(10) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(10) <= new_PM;
		end if;
	end process;
B_12:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(11) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(5);
				in_bits(11) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(11) <= new_PM;
		end if;
	end process;
B_13:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(12) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(6);
				in_bits(12) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(12) <= new_PM;
		end if;
	end process;
B_14:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(13) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(6);
				in_bits(13) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(13) <= new_PM;
		end if;
	end process;
B_15:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(14) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(7);
				in_bits(14) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(14) <= new_PM;
		end if;
	end process;
B_16:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(15) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(7);
				in_bits(15) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(15) <= new_PM;
		end if;
	end process;
B_17:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(16) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(8);
				in_bits(16) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(16) <= new_PM;
		end if;
	end process;
B_18:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(17) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(8);
				in_bits(17) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(17) <= new_PM;
		end if;
	end process;
B_19:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(18) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(9);
				in_bits(18) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(18) <= new_PM;
		end if;
	end process;
B_20:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(19) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(9);
				in_bits(19) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(19) <= new_PM;
		end if;
	end process;
B_21:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(20) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(10);
				in_bits(20) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(20) <= new_PM;
		end if;
	end process;
B_22:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(21) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(10);
				in_bits(21) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(21) <= new_PM;
		end if;
	end process;
B_23:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(22) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(11);
				in_bits(22) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(22) <= new_PM;
		end if;
	end process;
B_24:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(23) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(11);
				in_bits(23) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(23) <= new_PM;
		end if;
	end process;
B_25:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(24) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(12);
				in_bits(24) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(24) <= new_PM;
		end if;
	end process;
B_26:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(25) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(12);
				in_bits(25) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(25) <= new_PM;
		end if;
	end process;
B_27:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(26) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(13);
				in_bits(26) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(26) <= new_PM;
		end if;
	end process;
B_28:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(27) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(13);
				in_bits(27) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(27) <= new_PM;
		end if;
	end process;
B_29:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(28) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(14);
				in_bits(28) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(28) <= new_PM;
		end if;
	end process;
B_30:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(29) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(14);
				in_bits(29) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(29) <= new_PM;
		end if;
	end process;
B_31:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(30) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(15);
				in_bits(30) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(30) <= new_PM;
		end if;
	end process;
B_32:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(31) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(15);
				in_bits(31) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(31) <= new_PM;
		end if;
	end process;
B_33:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(32) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(16);
				in_bits(32) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(32) <= new_PM;
		end if;
	end process;
B_34:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(33) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(16);
				in_bits(33) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(33) <= new_PM;
		end if;
	end process;
B_35:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(34) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(17);
				in_bits(34) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(34) <= new_PM;
		end if;
	end process;
B_36:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(35) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(17);
				in_bits(35) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(35) <= new_PM;
		end if;
	end process;
B_37:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(36) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(18);
				in_bits(36) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(36) <= new_PM;
		end if;
	end process;
B_38:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(37) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(18);
				in_bits(37) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(37) <= new_PM;
		end if;
	end process;
B_39:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(38) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(19);
				in_bits(38) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(38) <= new_PM;
		end if;
	end process;
B_40:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(39) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(19);
				in_bits(39) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(39) <= new_PM;
		end if;
	end process;
B_41:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(40) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(20);
				in_bits(40) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(40) <= new_PM;
		end if;
	end process;
B_42:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(41) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(20);
				in_bits(41) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(41) <= new_PM;
		end if;
	end process;
B_43:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(42) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(21);
				in_bits(42) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(42) <= new_PM;
		end if;
	end process;
B_44:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(43) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(21);
				in_bits(43) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(43) <= new_PM;
		end if;
	end process;
B_45:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(44) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(22);
				in_bits(44) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(44) <= new_PM;
		end if;
	end process;
B_46:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(45) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(22);
				in_bits(45) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(45) <= new_PM;
		end if;
	end process;
B_47:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(46) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(23);
				in_bits(46) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(46) <= new_PM;
		end if;
	end process;
B_48:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(47) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(23);
				in_bits(47) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(47) <= new_PM;
		end if;
	end process;
B_49:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(48) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(24);
				in_bits(48) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(48) <= new_PM;
		end if;
	end process;
B_50:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(49) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(24);
				in_bits(49) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(49) <= new_PM;
		end if;
	end process;
B_51:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(50) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(25);
				in_bits(50) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(50) <= new_PM;
		end if;
	end process;
B_52:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(51) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(25);
				in_bits(51) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(51) <= new_PM;
		end if;
	end process;
B_53:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(52) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(26);
				in_bits(52) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(52) <= new_PM;
		end if;
	end process;
B_54:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(53) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(26);
				in_bits(53) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(53) <= new_PM;
		end if;
	end process;
B_55:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(54) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(27);
				in_bits(54) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(54) <= new_PM;
		end if;
	end process;
B_56:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(55) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(27);
				in_bits(55) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(55) <= new_PM;
		end if;
	end process;
B_57:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(56) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(28);
				in_bits(56) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(56) <= new_PM;
		end if;
	end process;
B_58:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(57) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(28);
				in_bits(57) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(57) <= new_PM;
		end if;
	end process;
B_59:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(58) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(29);
				in_bits(58) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(58) <= new_PM;
		end if;
	end process;
B_60:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(59) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(29);
				in_bits(59) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(59) <= new_PM;
		end if;
	end process;
B_61:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(60) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(30);
				in_bits(60) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(60) <= new_PM;
		end if;
	end process;
B_62:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(61) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(30);
				in_bits(61) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(61) <= new_PM;
		end if;
	end process;
B_63:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(62) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(31);
				in_bits(62) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(62) <= new_PM;
		end if;
	end process;
B_64:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(63) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(31);
				in_bits(63) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(63) <= new_PM;
		end if;
	end process;
B_65:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	    
	begin
		if (rst = '1') then 
			PM_branches(64) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(32);
				in_bits(64) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(64) <= new_PM;
		end if;
	end process;	
B_66:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(65) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(32);
				in_bits(65) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(65) <= new_PM;
		end if;
	end process;
B_67:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(66) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(33);
				in_bits(66) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(66) <= new_PM;
		end if;
	end process;
B_68:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(67) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(33);
				in_bits(67) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(67) <= new_PM;
		end if;
	end process;
B_69:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(68) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(34);
				in_bits(68) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(68) <= new_PM;
		end if;
	end process;
B_70:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(69) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(34);
				in_bits(69) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(69) <= new_PM;
		end if;
	end process;
B_71:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(70) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(35);
				in_bits(70) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(70) <= new_PM;
		end if;
	end process;
B_72:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(71) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(35);
				in_bits(71) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(71) <= new_PM;
		end if;
	end process;
B_73:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(72) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(36);
				in_bits(72) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(72) <= new_PM;
		end if;
	end process;
B_74:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(73) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(36);
				in_bits(73) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(73) <= new_PM;
		end if;
	end process;
B_75:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(74) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(37);
				in_bits(74) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(74) <= new_PM;
		end if;
	end process;
B_76:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(75) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(37);
				in_bits(75) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(75) <= new_PM;
		end if;
	end process;
B_77:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(76) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(38);
				in_bits(76) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(76) <= new_PM;
		end if;
	end process;
B_78:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(77) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(38);
				in_bits(77) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(77) <= new_PM;
		end if;
	end process;
B_79:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(78) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(39);
				in_bits(78) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(78) <= new_PM;
		end if;
	end process;
B_80:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(79) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(39);
				in_bits(79) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(79) <= new_PM;
		end if;
	end process;
B_81:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(80) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(40);
				in_bits(80) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(80) <= new_PM;
		end if;
	end process;
B_82:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(81) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(40);
				in_bits(81) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(81) <= new_PM;
		end if;
	end process;
B_83:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(82) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(41);
				in_bits(82) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(82) <= new_PM;
		end if;
	end process;
B_84:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(83) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(41);
				in_bits(83)<= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(83) <= new_PM;
		end if;
	end process;
B_85:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(84) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(42);
				in_bits(84) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(84) <= new_PM;
		end if;
	end process;
B_86:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(85) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(42);
				in_bits(85) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(85) <= new_PM;
		end if;
	end process;
B_87:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(86) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(43);
				in_bits(86) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(86) <= new_PM;
		end if;
	end process;
B_88:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(87) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(43);
				in_bits(87) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(87) <= new_PM;
		end if;
	end process;
B_89:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(88) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(44);
				in_bits(88) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(88) <= new_PM;
		end if;
	end process;
B_90:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(89) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(44);
				in_bits(89) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(89) <= new_PM;
		end if;
	end process;
B_91:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(90) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(45);
				in_bits(90) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(90) <= new_PM;
		end if;
	end process;
B_92:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(91) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(45);
				in_bits(91) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(91) <= new_PM;
		end if;
	end process;
B_93:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(92) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(46);
				in_bits(92) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(92) <= new_PM;
		end if;
	end process;
B_94:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(93) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(46);
				in_bits(93) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(93) <= new_PM;
		end if;
	end process;
B_95:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(94) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(47);
				in_bits(94) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(94) <= new_PM;
		end if;
	end process;
B_96:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(95) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(47);
				in_bits(95) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(95) <= new_PM;
		end if;
	end process;
B_97:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(96) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(48);
				in_bits(96) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(96) <= new_PM;
		end if;
	end process;
B_98:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(97) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(48);
				in_bits(97) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(97) <= new_PM;
		end if;
	end process;
B_99:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(98) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(49);
				in_bits(98) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(98) <= new_PM;
		end if;
	end process;
B_100:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(99) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(49);
				in_bits(99) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(99) <= new_PM;
		end if;
	end process;
B_101:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(100) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(50);
				in_bits(100) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(100) <= new_PM;
		end if;
	end process;
B_102:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(101) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(50);
				in_bits(101) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(101) <= new_PM;
		end if;
	end process;
B_103:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(102) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(51);
				in_bits(102) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(102) <= new_PM;
		end if;
	end process;
B_104:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(103) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(51);
				in_bits(103) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(103) <= new_PM;
		end if;
	end process;
B_105:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(104) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(52);
				in_bits(104) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(104) <= new_PM;
		end if;
	end process;
B_106:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(105) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(52);
				in_bits(105) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(105) <= new_PM;
		end if;
	end process;
B_107:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(106) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(53);
				in_bits(106) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(106) <= new_PM;
		end if;
	end process;
B_108:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(107) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(53);
				in_bits(107) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(107) <= new_PM;
		end if;
	end process;
B_109:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(108) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(54);
				in_bits(108) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(108) <= new_PM;
		end if;
	end process;
B_110:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(109) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(54);
				in_bits(109) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(109) <= new_PM;
		end if;
	end process;
B_111:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(110) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(55);
				in_bits(110) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(110) <= new_PM;
		end if;
	end process;
B_112:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(111) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(55);
				in_bits(111) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(111) <= new_PM;
		end if;
	end process;
B_113:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(112) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(56);
				in_bits(112) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(112) <= new_PM;
		end if;
	end process;
B_114:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(113) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(56);
				in_bits(113) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(113) <= new_PM;
		end if;
	end process;
B_115:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(114) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(57);
				in_bits(114) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(114) <= new_PM;
		end if;
	end process;
B_116:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(115) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(57);
				in_bits(115) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(115) <= new_PM;
		end if;
	end process;
B_117:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(116) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(58);
				in_bits(116) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(116) <= new_PM;
		end if;
	end process;
B_118:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(117) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(58);
				in_bits(117) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(117) <= new_PM;
		end if;
	end process;
B_119:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(118) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(59);
				in_bits(118) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(118) <= new_PM;
		end if;
	end process;
B_120:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(119) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(59);
				in_bits(119) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(119) <= new_PM;
		end if;
	end process;
B_121:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(120) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(60);
				in_bits(120) <= '0';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(120) <= new_PM;
		end if;
	end process;
B_122:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(121) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(60);
				in_bits(121) <= '1';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(121) <= new_PM;
		end if;
	end process;
B_123:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(122) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(61);
				in_bits(122) <= '0';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(122) <= new_PM;
		end if;
	end process;
B_124:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(123) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(61);
				in_bits(123) <= '1';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(123) <= new_PM;
		end if;
	end process;
B_125:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(124) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(62);
				in_bits(124) <= '0';
				expected := "10";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(124) <= new_PM;
		end if;
	end process;
B_126:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(125) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(62);
				in_bits(125) <= '1';
				expected := "01";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(125) <= new_PM;
		end if;
	end process;
B_127:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(126) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(63);
				in_bits(126) <= '0';
				expected := "00";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(126) <= new_PM;
		end if;
	end process;
B_128:process(clk)
		Variable result : std_logic_vector ( 1 downto 0);
		variable expected : std_logic_vector(1 downto 0);
		variable sum : std_logic;
		variable carry : std_logic;
        variable old_PM_in : std_logic_vector(6 downto 0);
		variable new_PM : std_logic_vector(6 downto 0);
		variable b_metric : std_logic_vector ( 1 downto 0);
	begin
		if (rst = '1') then 
			PM_branches(127) <= (others => '0');
		elsif (rising_edge(clk)) then 
				old_PM_in := PM_in(63);
				in_bits(127) <= '1';
				expected := "11";
				result(0) := code_word(1) xnor expected(0);
				result(1) := code_word(0) xnor expected(1);
				sum := result(0) xor result(1);
				carry := result(0) and result(1);
				b_metric := carry & sum;
				new_PM := old_PM_in + b_metric;
				PM_branches(127) <= new_PM;
		end if;
	end process;
------------------------------------------------------------------Compare Phase ------------------------------------------------------------
C_0:process(clk)
	begin
		if(PM_branches(0) > PM_branches(64)) then
			PM_out(0) <= PM_branches(0);
			data_out(0) <= in_bits(0);
			Previous_state(0) <= 0;
		else 
			PM_out(0) <= PM_branches(64);
			data_out(0) <= in_bits(64);
			Previous_state(0) <= 1;
		end if;
	end process;
C_32:process(clk)
	begin
		if(PM_branches(1) > PM_branches(65)) then
			PM_out(1) <= PM_branches(1);
			data_out(32) <= in_bits(1);
			Previous_state(32) <= 0;
		else 
			PM_out(1) <= PM_branches(65);
			data_out(32) <= in_bits(65);
			Previous_state(32) <= 1;
		end if;
	end process;
C_16:process(clk)
	begin
		if(PM_branches(2) > PM_branches(66)) then
			PM_out(2) <= PM_branches(2);
			data_out(16) <= in_bits(2);
			Previous_state(16) <= 32;
		else 
			PM_out(2) <= PM_branches(66);
			data_out(16) <= in_bits(66);
			Previous_state(16) <= 33;
		end if;
	end process;
C_48:process(clk)
	begin
		if(PM_branches(3) > PM_branches(67)) then
			PM_out(3) <= PM_branches(3);
			data_out(48) <= in_bits(3);
			Previous_state(48) <= 32;
		else 
			PM_out(3) <= PM_branches(67);
			data_out(48) <= in_bits(67);
			Previous_state(48) <= 33;
		end if;
	end process;
C_8:process(clk)
	begin
		if(PM_branches(4) > PM_branches(68)) then
			PM_out(4) <= PM_branches(4);
			data_out(8) <= in_bits(4);
			Previous_state(8) <= 16;
		else 
			PM_out(4) <= PM_branches(68);
			data_out(8) <= in_bits(68);
			Previous_state(8) <= 17;
		end if;
	end process;
C_40:process(clk)
	begin
		if(PM_branches(5) > PM_branches(69)) then
			PM_out(5) <= PM_branches(5);
			data_out(40) <= in_bits(5);
			Previous_state(40) <= 16;
		else 
			PM_out(5) <= PM_branches(69);
			data_out(40) <= in_bits(69);
			Previous_state(40) <= 17;
		end if;
	end process;
C_24:process(clk)
	begin
		if(PM_branches(6) > PM_branches(70)) then
			PM_out(6) <= PM_branches(6);
			data_out(24) <= in_bits(6);
			Previous_state(24) <= 48;
		else 
			PM_out(6) <= PM_branches(70);
			data_out(24) <= in_bits(70);
			Previous_state(24) <= 49;
		end if;
	end process;
C_56:process(clk)
	begin
		if(PM_branches(7) > PM_branches(71)) then
			PM_out(7) <= PM_branches(7);
			data_out(56) <= in_bits(7);
			Previous_state(56) <= 48;
		else 
			PM_out(7) <= PM_branches(71);
			data_out(56) <= in_bits(71);
			Previous_state(56) <= 49;
		end if;
	end process;
C_4:process(clk)
	begin
		if(PM_branches(8) > PM_branches(72)) then
			PM_out(8) <= PM_branches(8);
			data_out(4) <= in_bits(8);
			Previous_state(4) <= 8;
		else 
			PM_out(8) <= PM_branches(72);
			data_out(4) <= in_bits(72);
			Previous_state(4) <= 9;
		end if;
	end process;
C_36:process(clk)
	begin
		if(PM_branches(9) > PM_branches(73)) then
			PM_out(9) <= PM_branches(9);
			data_out(36) <= in_bits(9);
			Previous_state(36) <= 8;
		else 
			PM_out(9) <= PM_branches(73);
			data_out(36) <= in_bits(73);
			Previous_state(36) <= 9;
		end if;
	end process;
C_20:process(clk)
	begin
		if(PM_branches(10) > PM_branches(74)) then
			PM_out(10) <= PM_branches(10);
			data_out(20) <= in_bits(10);
			Previous_state(20) <= 40;
		else 
			PM_out(10) <= PM_branches(74);
			data_out(20) <= in_bits(74);
			Previous_state(20) <= 41;
		end if;
	end process;
C_52:process(clk)
	begin
		if(PM_branches(11) > PM_branches(75)) then
			PM_out(11) <= PM_branches(11);
			data_out(52) <= in_bits(11);
			Previous_state(52) <= 40;
		else 
			PM_out(11) <= PM_branches(75);
			data_out(52) <= in_bits(75);
			Previous_state(52) <= 41;
		end if;
	end process;
C_12:process(clk)
	begin
		if(PM_branches(12) > PM_branches(76)) then
			PM_out(12) <= PM_branches(12);
			data_out(12) <= in_bits(12);
			Previous_state(12) <= 24;
		else 
			PM_out(12) <= PM_branches(76);
			data_out(12) <= in_bits(76);
			Previous_state(12) <= 25;
		end if;
	end process;
C_44:process(clk)
	begin
		if(PM_branches(13) > PM_branches(77)) then
			PM_out(13) <= PM_branches(13);
			data_out(44) <= in_bits(13);
			Previous_state(44) <= 24;
			
		else 
			PM_out(13) <= PM_branches(77);
			data_out(44) <= in_bits(77);
			Previous_state(44) <= 25;
		end if;
	end process;
C_28:process(clk)
	begin
		if(PM_branches(14) > PM_branches(78)) then
			PM_out(14) <= PM_branches(14);
			data_out(28) <= in_bits(14);
			Previous_state(28) <= 56;
		else
			PM_out(14) <= PM_branches(78);
			data_out(28) <= in_bits(78);
			Previous_state(28) <= 57;
		end if;
	end process;
C_60:process(clk)
	begin
		if(PM_branches(15) > PM_branches(79)) then
			PM_out(15) <= PM_branches(15);
			data_out(60) <= in_bits(15);
			Previous_state(60) <= 56;
		else 
			PM_out(15) <= PM_branches(79);
			data_out(60) <= in_bits(79);
			Previous_state(60) <= 57;
		end if;
	end process;
C_2:process(clk)
	begin
		if(PM_branches(16) > PM_branches(80)) then
			PM_out(16) <= PM_branches(16);
			data_out(2) <= in_bits(16);
			Previous_state(2) <= 4;
		else 
			PM_out(16) <= PM_branches(80);
			data_out(2) <= in_bits(80);
			Previous_state(2) <= 5;
		end if;
	end process;
C_34:process(clk)
	begin
		if(PM_branches(17) > PM_branches(81)) then
			PM_out(17) <= PM_branches(17);
			data_out(34) <= in_bits(17);
			Previous_state(34) <= 4;
		else 
			PM_out(17) <= PM_branches(81);
			data_out(34) <= in_bits(81);
			Previous_state(34) <= 5;
		end if;
	end process;
C_18:process(clk)
	begin
		if(PM_branches(18) > PM_branches(82)) then
			PM_out(18) <= PM_branches(18);
			data_out(18) <= in_bits(18);
			Previous_state(18) <= 36;
		else 
			PM_out(18) <= PM_branches(82);
			data_out(18) <= in_bits(82);
			Previous_state(18) <= 37;
		end if;
	end process;
C_50:process(clk)
	begin
		if(PM_branches(19) > PM_branches(83)) then
			PM_out(19) <= PM_branches(19);
			data_out(50) <= in_bits(19);
			Previous_state(50) <= 36;
		else 
			PM_out(19) <= PM_branches(83);
			data_out(50) <= in_bits(83);
			Previous_state(50) <= 37;
		end if;
	end process;
C_10:process(clk)
	begin
		if(PM_branches(20) > PM_branches(84)) then
			PM_out(20) <= PM_branches(20);
			data_out(10) <= in_bits(20);
			Previous_state(10) <= 20;
		else 
			PM_out(20) <= PM_branches(84);
			data_out(10) <= in_bits(84);
			Previous_state(10) <= 21;

		end if;
	end process;
C_42:process(clk)
	begin
		if(PM_branches(21) > PM_branches(85)) then
			PM_out(21) <= PM_branches(21);
			data_out(42) <= in_bits(21);
			Previous_state(42) <= 20;		
			
		else 
			PM_out(21) <= PM_branches(85);
			data_out(42) <= in_bits(85);
			Previous_state(42) <= 21;
		end if;
	end process;
C_26:process(clk)
	begin
		if(PM_branches(22) > PM_branches(86)) then
			PM_out(22) <= PM_branches(22);
			data_out(26) <= in_bits(22);
			Previous_state(26) <= 52;
		else 
			PM_out(22) <= PM_branches(86);
			data_out(26) <= in_bits(86);
			Previous_state(26) <= 53;
		end if;
	end process;
C_58:process(clk)
	begin
		if(PM_branches(23) > PM_branches(87)) then
			PM_out(23) <= PM_branches(23);
			data_out(58) <= in_bits(23);
			Previous_state(58) <= 52;
		else 
			PM_out(58) <= PM_branches(87);
			data_out(23) <= in_bits(87);
			Previous_state(58) <= 53;
		end if;
	end process;
C_6:process(clk)
	begin
		if(PM_branches(24) > PM_branches(88)) then
			PM_out(24) <= PM_branches(24);
			data_out(6) <= in_bits(24);
			Previous_state(6) <= 12;
		else 
			PM_out(24) <= PM_branches(88);
			data_out(6) <= in_bits(88);
			Previous_state(6) <= 13;
		end if;
	end process;
C_38:process(clk)
	begin
		if(PM_branches(25) > PM_branches(89)) then
			PM_out(25) <= PM_branches(25);
			data_out(38) <= in_bits(25);
			Previous_state(38) <= 12;
		else 
			PM_out(25) <= PM_branches(89);
			data_out(38) <= in_bits(89);
			Previous_state(38) <= 13;
		end if;
	end process;
C_22:process(clk)
	begin
		if(PM_branches(26) > PM_branches(90)) then
			PM_out(26) <= PM_branches(26);
			data_out(22) <= in_bits(26);
			Previous_state(22) <= 44;
		else 
			PM_out(26) <= PM_branches(90);
			data_out(22) <= in_bits(90);
			Previous_state(22) <= 45;
		end if;
	end process;
C_54:process(clk)
	begin
		if(PM_branches(27) > PM_branches(91)) then
			PM_out(27) <= PM_branches(27);
			data_out(54) <= in_bits(27);
			Previous_state(54) <= 44;
		else 
			PM_out(27) <= PM_branches(91);
			data_out(54) <= in_bits(91);
			Previous_state(54) <= 45;
		end if;
	end process;
C_14:process(clk)
	begin
		if(PM_branches(28) > PM_branches(92)) then
			PM_out(28) <= PM_branches(28);
			data_out(14) <= in_bits(28);
			Previous_state(14) <= 28;
		else 
			PM_out(28) <= PM_branches(92);
			data_out(14) <= in_bits(92);
			Previous_state(14) <= 29;
		end if;
	end process;
C_46:process(clk)
	begin
		if(PM_branches(29) > PM_branches(93)) then
			PM_out(29) <= PM_branches(29);
			data_out(46) <= in_bits(29);
			Previous_state(46) <= 28;
		else 
			PM_out(29) <= PM_branches(93);
			data_out(46) <= in_bits(93);
			Previous_state(46) <= 29;
		end if;
	end process;
C_30:process(clk)
	begin
		if(PM_branches(30) > PM_branches(94)) then
			PM_out(30) <= PM_branches(30);
			data_out(30) <= in_bits(30);
			Previous_state(30) <= 60;
		else 
			PM_out(30) <= PM_branches(94);
			data_out(30) <= in_bits(94);
			Previous_state(30) <= 61;
		end if;
	end process;
C_62:process(clk)
	begin
		if(PM_branches(31) > PM_branches(95)) then
			PM_out(31) <= PM_branches(31);
			data_out(62) <= in_bits(31);
			Previous_state(62) <= 60;
		else 
			PM_out(31) <= PM_branches(95);
			data_out(62) <= in_bits(95);
			Previous_state(60) <= 61;
		end if;
	end process;
C_1:process(clk)
	begin
		if(PM_branches(32) > PM_branches(96)) then
			PM_out(32) <= PM_branches(32);
			data_out(1) <= in_bits(32);
			Previous_state(1) <= 2;
		else 
			PM_out(32) <= PM_branches(96);
			data_out(1) <= in_bits(96);
			Previous_state(1) <= 3;
		end if;
	end process;
C_33:process(clk)
	begin
		if(PM_branches(33) > PM_branches(97)) then
			PM_out(33) <= PM_branches(33);
			data_out(33) <= in_bits(33);
			Previous_state(33) <= 2;
			
		else 
			PM_out(33) <= PM_branches(97);
			data_out(33) <= in_bits(97);
			Previous_state(33) <= 2;
		end if;
	end process;
C_17:process(clk)
	begin
		if(PM_branches(34) > PM_branches(98)) then
			PM_out(34) <= PM_branches(34);
			data_out(17) <= in_bits(34);
			Previous_state(17) <= 34;
		else 
			PM_out(34) <= PM_branches(98);
			data_out(17) <= in_bits(98);
			Previous_state(17) <= 35;
		end if;
	end process;
C_49:process(clk)
	begin
		if(PM_branches(35) > PM_branches(99)) then
			PM_out(35) <= PM_branches(35);
			data_out(49) <= in_bits(35);
			Previous_state(49) <= 34;
		else 
			PM_out(35) <= PM_branches(99);
			data_out(49) <= in_bits(99);
			Previous_state(49) <= 35;
		end if;
	end process;
C_9:process(clk)
	begin
		if(PM_branches(36) > PM_branches(100)) then
			PM_out(36) <= PM_branches(36);
			data_out(9) <= in_bits(36);
			Previous_state(9) <= 18;
		else 
			PM_out(36) <= PM_branches(100);
			data_out(9) <= in_bits(100);
			Previous_state(9) <= 19;
		end if;
	end process;
C_41:process(clk)
	begin
		if(PM_branches(37) > PM_branches(101)) then
			PM_out(37) <= PM_branches(37);
			data_out(41) <= in_bits(37);
			Previous_state(41) <= 18;
		else 
			PM_out(37) <= PM_branches(101);
			data_out(41) <= in_bits(101);
			Previous_state(41) <= 19;
		end if;
	end process;
C_25:process(clk)
	begin
		if(PM_branches(38) > PM_branches(102)) then
			PM_out(38) <= PM_branches(38);
			data_out(25) <= in_bits(38);
			Previous_state(25) <= 50;
		else 
			PM_out(38) <= PM_branches(102);
			data_out(25) <= in_bits(102);
			Previous_state(25) <= 51;
		end if;
	end process;
C_57:process(clk)
	begin
		if(PM_branches(39) > PM_branches(103)) then
			PM_out(39) <= PM_branches(39);
			data_out(57) <= in_bits(39);
			Previous_state(57) <= 50;
		else 
			PM_out(39) <= PM_branches(103);
			data_out(57) <= in_bits(103);
			Previous_state(57) <= 51;
		end if;
	end process;
C_5:process(clk)
	begin
		if(PM_branches(40) > PM_branches(104)) then
			PM_out(40) <= PM_branches(40);
			data_out(5) <= in_bits(40);
			Previous_state(5) <= 10;
		else 
			PM_out(40) <= PM_branches(104);
			data_out(5) <= in_bits(104);
			Previous_state(5) <= 11;
		end if;
	end process;
C_37:process(clk)
	begin
		if(PM_branches(41) > PM_branches(105)) then
			PM_out(41) <= PM_branches(41);
			data_out(37) <= in_bits(41);
			Previous_state(37) <= 10;
		else 
			PM_out(41) <= PM_branches(105);
			data_out(37) <= in_bits(105);
			Previous_state(37) <= 11;
		end if;
	end process;
C_21:process(clk)
	begin
		if(PM_branches(42) > PM_branches(106)) then
			PM_out(42) <= PM_branches(42);
			data_out(21) <= in_bits(42);
			Previous_state(21) <= 42;
		else 
			PM_out(42) <= PM_branches(106);
			data_out(42) <= in_bits(106);
			Previous_state(21) <= 43;
		end if;
	end process;
C_53:process(clk)
	begin
		if(PM_branches(43) > PM_branches(107)) then
			PM_out(43) <= PM_branches(43);
			data_out(53) <= in_bits(43);
			Previous_state(53) <= 42;
		else 
			PM_out(43) <= PM_branches(107);
			data_out(53) <= in_bits(107);
			Previous_state(53) <= 43;
		end if;
	end process;
C_13:process(clk)
	begin
		if(PM_branches(44) > PM_branches(108)) then
			PM_out(44) <= PM_branches(44);
			data_out(13) <= in_bits(44);
			Previous_state(13) <= 26;
		else 
			PM_out(44) <= PM_branches(108);
			data_out(13) <= in_bits(108);
			Previous_state(13) <= 27;
		end if;
	end process;
C_45:process(clk)
	begin
		if(PM_branches(45) > PM_branches(109)) then
			PM_out(45) <= PM_branches(45);
			data_out(45) <= in_bits(45);
			Previous_state(45) <= 26;
		else 
			PM_out(45) <= PM_branches(109);
			data_out(45) <= in_bits(109);
			Previous_state(45) <= 27;
		end if;
	end process;
C_29:process(clk)
	begin
		if(PM_branches(46) > PM_branches(110)) then
			PM_out(46) <= PM_branches(46);
			data_out(29) <= in_bits(46);
			Previous_state(29) <= 58;
		else 
			PM_out(46) <= PM_branches(110);
			data_out(29) <= in_bits(110);
			Previous_state(29) <= 59;
		end if;
	end process;
C_61:process(clk)
	begin
		if(PM_branches(47) > PM_branches(111)) then
			PM_out(47) <= PM_branches(47);
			data_out(61) <= in_bits(47);
			Previous_state(61) <= 58;
		else 
			PM_out(47) <= PM_branches(111);
			data_out(47) <= in_bits(111);
			Previous_state(61) <= 59;
		end if;
	end process;
C_3:process(clk)
	begin
		if(PM_branches(48) > PM_branches(112)) then
			PM_out(48) <= PM_branches(48);
			data_out(3) <= in_bits(48);
			Previous_state(3) <= 6;
		else 
			PM_out(48) <= PM_branches(112);
			data_out(3) <= in_bits(112);
			Previous_state(3) <= 7;
		end if;
	end process;
C_35:process(clk)
	begin
		if(PM_branches(49) > PM_branches(113)) then
			PM_out(49) <= PM_branches(49);
			data_out(35) <= in_bits(49);
			Previous_state(35) <= 6;
		else 
			PM_out(49) <= PM_branches(113);
			data_out(35) <= in_bits(113);
			Previous_state(35) <= 7;
			
		end if;
	end process;
C_19:process(clk)
	begin
		if(PM_branches(50) > PM_branches(114)) then
			PM_out(50) <= PM_branches(50);
			data_out(19) <= in_bits(50);
			Previous_state(19) <= 38;
		else 
			PM_out(50) <= PM_branches(114);
			data_out(19) <= in_bits(114);
			Previous_state(19) <= 39;
		end if;
	end process;
C_51:process(clk)
	begin
		if(PM_branches(51) > PM_branches(115)) then
			PM_out(51) <= PM_branches(51);
			data_out(51) <= in_bits(51);
			Previous_state(51) <= 38;
		else 
			PM_out(51) <= PM_branches(115);
			data_out(51) <= in_bits(115);
			Previous_state(51) <= 39;
		end if;
	end process;
C_11:process(clk)
	begin
		if(PM_branches(52) > PM_branches(116)) then
			PM_out(52) <= PM_branches(52);
			data_out(11) <= in_bits(52);
			Previous_state(11) <= 22;
		else 
			PM_out(52) <= PM_branches(116);
			data_out(11) <= in_bits(116);
			Previous_state(11) <= 23;
		end if;
	end process;
C_43:process(clk)
	begin
		if(PM_branches(53) > PM_branches(117)) then
			PM_out(53) <= PM_branches(53);
			data_out(43) <= in_bits(53);
			Previous_state(43) <= 22;
		else 
			PM_out(53) <= PM_branches(117);
			data_out(43) <= in_bits(117);
			Previous_state(43) <= 23;
		end if;
	end process;
C_27:process(clk)
	begin
		if(PM_branches(54) > PM_branches(118)) then
			PM_out(54) <= PM_branches(54);
			data_out(27) <= in_bits(54);
			Previous_state(27) <= 54;
		else 
			PM_out(54) <= PM_branches(118);
			data_out(27) <= in_bits(118);
			Previous_state(27) <= 55;
		end if;
	end process;
C_59:process(clk)
	begin
		if(PM_branches(55) > PM_branches(119)) then
			PM_out(55) <= PM_branches(55);
			data_out(59) <= in_bits(55);
			Previous_state(59) <= 54;
		else 
			PM_out(55) <= PM_branches(119);
			data_out(59) <= in_bits(119);
			Previous_state(59) <= 55;
		end if;
	end process;
C_7:process(clk)
	begin
		if(PM_branches(56) > PM_branches(120)) then
			PM_out(56) <= PM_branches(56);
			data_out(7) <= in_bits(56);
			Previous_state(7) <= 14;
		else 
			PM_out(56) <= PM_branches(120);
			data_out(7) <= in_bits(120);
			Previous_state(7) <= 15;
		end if;
	end process;
C_39:process(clk)
	begin
		if(PM_branches(57) > PM_branches(121)) then
			PM_out(57) <= PM_branches(57);
			data_out(39) <= in_bits(57);
			Previous_state(39) <= 14;
		else 
			PM_out(57) <= PM_branches(121);
			data_out(39) <= in_bits(121);
			Previous_state(7) <= 15;
		end if;
	end process;
C_23:process(clk)
	begin
		if(PM_branches(58) > PM_branches(122)) then
			PM_out(58) <= PM_branches(58);
			data_out(23) <= in_bits(58);
			Previous_state(23) <= 46;
		else 
			PM_out(58) <= PM_branches(122);
			data_out(23) <= in_bits(122);
			Previous_state(23) <= 47;
		end if;
	end process;
C_55:process(clk)
	begin
		if(PM_branches(59) > PM_branches(123)) then
			PM_out(59) <= PM_branches(59);
			data_out(55) <= in_bits(59);
			Previous_state(55) <= 46;
		else 
			PM_out(59) <= PM_branches(123);
			data_out(59) <= in_bits(123);
			Previous_state(55) <= 47;
		end if;
	end process;
C_15:process(clk)
	begin
		if(PM_branches(60) > PM_branches(124)) then
			PM_out(60) <= PM_branches(60);
			data_out(15) <= in_bits(60);
			Previous_state(15) <= 30;
		else 
			PM_out(60) <= PM_branches(124);
			data_out(15) <= in_bits(124);
			Previous_state(15) <= 31;
		end if;
	end process;
C_47:process(clk)
	begin
		if(PM_branches(61) > PM_branches(125)) then
			PM_out(61) <= PM_branches(61);
			data_out(47) <= in_bits(61);
			Previous_state(47) <= 30;
		else 
			PM_out(61) <= PM_branches(125);
			data_out(47) <= in_bits(125);
			Previous_state(47) <= 31;
		end if;
	end process;
C_31:process(clk)
	begin
		if(PM_branches(62) > PM_branches(126)) then
			PM_out(62) <= PM_branches(62);
			data_out(31) <= in_bits(62);
			Previous_state(31) <= 62;
		else 
			PM_out(62) <= PM_branches(126);
			data_out(31) <= in_bits(126);
			Previous_state(31) <= 63;
		end if;
	end process;
C_63:process(clk)
	begin
		if(PM_branches(63) > PM_branches(127)) then
			PM_out(63) <= PM_branches(63);
			data_out(63) <= in_bits(63);
			Previous_state(63) <= 62;
		else 
			PM_out(63) <= PM_branches(127);
			data_out(63) <= in_bits(127);
			Previous_state(63) <= 63;
		end if;
	end process;
end architecture;
