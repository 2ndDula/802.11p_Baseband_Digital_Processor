library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_data_types.all;

entity ACS_G6 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 31);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(63 downto 0);
PM_out : out vector_array(0 To 63)
);
end entity;

architecture behavioral of ACS_G6 is 
signal PM_branches: vector_array(0 to 63);
Signal in_bits : std_logic_vector(63 downto 0);
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
				data_out(4)<= in_bits(4);
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
				data_out(5)<= in_bits(5);
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
				data_out(6)<= in_bits(6);
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
				data_out(7)<= in_bits(7);
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
				data_out(8)<= in_bits(8);
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
				data_out(9)<= in_bits(9);
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
				data_out(10)<= in_bits(10);
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
				data_out(11)<= in_bits(11);
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
				data_out(12)<= in_bits(12);
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
				data_out(13)<= in_bits(13);
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
				data_out(14)<= in_bits(14);
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
				data_out(15)<= in_bits(15);
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
				data_out(16)<= in_bits(16);
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
				data_out(17)<= in_bits(17);
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
				data_out(18)<= in_bits(18);
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
				data_out(19)<= in_bits(19);
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
				data_out(20)<= in_bits(20);
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
				data_out(21)<= in_bits(21);
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
				data_out(22)<= in_bits(22);
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
				data_out(23)<= in_bits(23);
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
				data_out(24)<= in_bits(24);
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
				data_out(25)<= in_bits(25);
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
				data_out(26)<= in_bits(26);
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
				data_out(27)<= in_bits(27);
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
				data_out(28)<= in_bits(28);
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
				data_out(29)<= in_bits(29);
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
				data_out(30)<= in_bits(30);
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
				data_out(31)<= in_bits(31);
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
				data_out(32)<= in_bits(32);
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
				data_out(33)<= in_bits(33);
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
				data_out(34)<= in_bits(34);
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
				data_out(35)<= in_bits(35);
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
				data_out(36)<= in_bits(36);
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
				data_out(37)<= in_bits(37);
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
				data_out(38)<= in_bits(38);
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
				data_out(39)<= in_bits(39);
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
				data_out(40)<= in_bits(40);
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
				data_out(41)<= in_bits(41);
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
				data_out(42)<= in_bits(42);
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
				data_out(43)<= in_bits(43);
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
				data_out(44)<= in_bits(44);
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
				data_out(45)<= in_bits(45);
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
				data_out(46)<= in_bits(46);
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
				data_out(47)<= in_bits(47);
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
				data_out(48)<= in_bits(48);
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
				data_out(49)<= in_bits(49);
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
				data_out(50)<= in_bits(50);
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
				data_out(51)<= in_bits(51);
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
				data_out(52)<= in_bits(52);
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
				data_out(53)<= in_bits(53);
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
				data_out(54)<= in_bits(54);
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
				data_out(55)<= in_bits(55);
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
				data_out(56)<= in_bits(56);
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
				data_out(57)<= in_bits(57);
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
				data_out(58)<= in_bits(58);
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
				data_out(59)<= in_bits(59);
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
				data_out(60)<= in_bits(60);
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
				data_out(61)<= in_bits(61);
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
				data_out(62)<= in_bits(62);
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
				data_out(63)<= in_bits(63);
		end if;
	end process;
end architecture;
