library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_data_types.all;

entity Traceback is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 63);
data_in35 : in std_logic_vector(63 downto 0);
data_in34 : in std_logic_vector(63 downto 0);
data_in33 : in std_logic_vector(63 downto 0);
data_in32 : in std_logic_vector(63 downto 0);
data_in31 : in std_logic_vector(63 downto 0);
data_in30 : in std_logic_vector(63 downto 0);
data_in29 : in std_logic_vector(63 downto 0);
data_in28 : in std_logic_vector(63 downto 0);
data_in27 : in std_logic_vector(63 downto 0);
data_in26 : in std_logic_vector(63 downto 0);
data_in25 : in std_logic_vector(63 downto 0);
data_in24 : in std_logic_vector(63 downto 0);
data_in23 : in std_logic_vector(63 downto 0);
data_in22 : in std_logic_vector(63 downto 0);
data_in21 : in std_logic_vector(63 downto 0);
data_in20 : in std_logic_vector(63 downto 0);
data_in19 : in std_logic_vector(63 downto 0);
data_in18 : in std_logic_vector(63 downto 0);
data_in17 : in std_logic_vector(63 downto 0);
data_in16 : in std_logic_vector(63 downto 0);
data_in15 : in std_logic_vector(63 downto 0);
data_in14 : in std_logic_vector(63 downto 0);
data_in13 : in std_logic_vector(63 downto 0);
data_in12 : in std_logic_vector(63 downto 0);
data_in11 : in std_logic_vector(63 downto 0);
data_in10 : in std_logic_vector(63 downto 0);
data_in9 : in std_logic_vector(63 downto 0);
data_in8 : in std_logic_vector(63 downto 0);
data_in7 : in std_logic_vector(63 downto 0);
data_in6 : in std_logic_vector(63 downto 0);
data_in5 : in std_logic_vector(31 downto 0);
data_in4 : in std_logic_vector(15 downto 0);
data_in3 : in std_logic_vector(7 downto 0);
data_in2 : in std_logic_vector(3 downto 0);
data_in1 : in std_logic_vector(1 downto 0);
states35 : in mem_0;
states34 : in mem_0;
states33 : in mem_0;
states32 : in mem_0;
states31 : in mem_0;
states30 : in mem_0;
states29 : in mem_0;
states28 : in mem_0;
states27 : in mem_0;
states26 : in mem_0;
states25 : in mem_0;
states24 : in mem_0;
states23 : in mem_0;
states22 : in mem_0;
states21 : in mem_0;
states20 : in mem_0;
states19 : in mem_0;
states18 : in mem_0;
states17 : in mem_0;
states16 : in mem_0;
states15 : in mem_0;
states14 : in mem_0;
states13 : in mem_0;
states12 : in mem_0;
states11 : in mem_0;
states10 : in mem_0;
states9 : in mem_0;
states8 : in mem_0;
states7 : in mem_0;
states6 : in mem_0;
decoded_word : out std_logic_vector(34 downto 0)
);
end entity;

architecture behavioral of Traceback is 
 
signal i_1 : mem_1;
signal i_2 : mem_2;
signal i_3 : mem_3;
signal i_4 : mem_4;
signal i_5 : mem_5;
signal PM_branches_1 : vector_array (0 to 31);
signal PM_branches_2 : vector_array (0 to 15);
signal PM_branches_3 : vector_array (0 to 7);
signal PM_branches_4 : vector_array (0 to 3);
signal PM_branches_5 : vector_array (0 to 1);
signal PM_branches_6 : std_logic_vector(6 downto 0);
begin

C_1:process(clk)
	begin
		if(PM_in(0) > PM_in(1)) then
			PM_branches_1(0) <= PM_in(0);
			i_1(0) <= 0;
		else 
			PM_branches_1(0) <= PM_in(1);
			i_1(0) <= 1;
		end if;
end process;
C_2:process(clk)
	begin
		if(PM_in(2) > PM_in(3)) then
			PM_branches_1(1) <= PM_in(2);
			i_1(1) <=2;
		else 
			PM_branches_1(1) <= PM_in(3);
			i_1(1) <=3;
		end if;
end process;
C_3:process(clk)
	begin
		if(PM_in(4) > PM_in(5)) then
			PM_branches_1(2) <= PM_in(4);
			i_1(2) <=4;
		else 
			PM_branches_1(2) <= PM_in(5);
			i_1(2) <=5;
		end if;
end process;
C_4:process(clk)
	begin
		if(PM_in(6) > PM_in(7)) then
			PM_branches_1(3) <= PM_in(6);
			i_1(3) <=6;
		else 
			PM_branches_1(3) <= PM_in(7);
			i_1(3) <=7;
		end if;
end process;
C_5:process(clk)
	begin
		if(PM_in(8) > PM_in(9)) then
			PM_branches_1(4) <= PM_in(8);
			i_1(4) <=8;
		else 
			PM_branches_1(4) <= PM_in(9);
			i_1(4) <=9;
		end if;
end process;
C_6:process(clk)
	begin
		if(PM_in(10) > PM_in(11)) then
			PM_branches_1(5) <= PM_in(10);
			i_1(5) <=10;
		else 
			PM_branches_1(5) <= PM_in(11);
			i_1(5) <=11;
		end if;
end process;
C_7:process(clk)
	begin
		if(PM_in(12) > PM_in(13)) then
			PM_branches_1(6) <= PM_in(12);
			i_1(6) <=12;
		else 
			PM_branches_1(6) <= PM_in(13);
			i_1(6) <=13;
		end if;
end process;

C_8:process(clk)
	begin
		if(PM_in(14) > PM_in(15)) then
			PM_branches_1(7) <= PM_in(14);
			i_1(7) <=14;
		else 
			PM_branches_1(7) <= PM_in(15);
			i_1(7) <=15;
		end if;
end process;

C_9:process(clk)
	begin
		if(PM_in(16) > PM_in(17)) then
			PM_branches_1(8) <= PM_in(16);
			i_1(8) <=16;
		else 
			PM_branches_1(8) <= PM_in(17);
			i_1(8) <=17;
		end if;
end process;

C_10:process(clk)
	begin
		if(PM_in(18) > PM_in(19)) then
			PM_branches_1(9) <= PM_in(18);
			i_1(9) <=18;
		else 
			PM_branches_1(9) <= PM_in(19);
			i_1(9) <=19;
		end if;
end process;

C_11:process(clk)
	begin
		if(PM_in(20) > PM_in(21)) then
			PM_branches_1(10) <= PM_in(20);
			i_1(10) <=20;
		else 
			PM_branches_1(10) <= PM_in(21);
			i_1(10) <=21;
		end if;
end process;

C_12:process(clk)
	begin
		if(PM_in(22) > PM_in(23)) then
			PM_branches_1(11) <= PM_in(22);
			i_1(11) <=22;
		else 
			PM_branches_1(11) <= PM_in(23);
			i_1(11) <=23;
		end if;
end process;

C_13:process(clk)
	begin
		if(PM_in(24) > PM_in(25)) then
			PM_branches_1(12) <= PM_in(24);
			i_1(12) <=24;
		else 
			PM_branches_1(12) <= PM_in(25);
			i_1(12) <=25;
		end if;
end process;

C_14:process(clk)
	begin
		if(PM_in(26) > PM_in(27)) then
			PM_branches_1(13) <= PM_in(26);
			i_1(13) <=26;
		else 
			PM_branches_1(13) <= PM_in(27);
			i_1(13) <=27;
		end if;
end process;

C_15:process(clk)
	begin
		if(PM_in(28) > PM_in(29)) then
			PM_branches_1(14) <= PM_in(28);
			i_1(14) <=28;
		else 
			PM_branches_1(14) <= PM_in(29);
			i_1(14) <=29;
		end if;
end process;

C_16:process(clk)
	begin
		if(PM_in(30) > PM_in(31)) then
			PM_branches_1(15) <= PM_in(30);
			i_1(15) <=30;
		else 
			PM_branches_1(15) <= PM_in(31);
			i_1(15) <=31;
		end if;
end process;

C_17:process(clk)
	begin
		if(PM_in(32) > PM_in(33)) then
			PM_branches_1(16) <= PM_in(32);
			i_1(16) <=32;
		else 
			PM_branches_1(16) <= PM_in(33);
			i_1(16) <=33;
		end if;
end process;

C_18:process(clk)
	begin
		if(PM_in(34) > PM_in(35)) then
			PM_branches_1(17) <= PM_in(34);
			i_1(17) <=34;
		else 
			PM_branches_1(17) <= PM_in(35);
			i_1(17) <=35;
		end if;
end process;

C_19:process(clk)
	begin
		if(PM_in(36) > PM_in(37)) then
			PM_branches_1(18) <= PM_in(36);
			i_1(18) <=36;
		else 
			PM_branches_1(18) <= PM_in(37);
			i_1(18) <=37;
		end if;
end process;

C_20:process(clk)
	begin
		if(PM_in(38) > PM_in(39)) then
			PM_branches_1(19) <= PM_in(38);
			i_1(19) <=38;
		else 
			PM_branches_1(19) <= PM_in(39);
			i_1(19) <=38;
		end if;
end process;

C_21:process(clk)
	begin
		if(PM_in(40) > PM_in(41)) then
			PM_branches_1(20) <= PM_in(40);
			i_1(20) <=40;
		else 
			PM_branches_1(20) <= PM_in(41);
			i_1(20) <=41;
		end if;
end process;

C_22:process(clk)
	begin
		if(PM_in(42) > PM_in(43)) then
			PM_branches_1(21) <= PM_in(42);
			i_1(21) <=42;
		else 
			PM_branches_1(21) <= PM_in(43);
			i_1(21) <=43;
		end if;
end process;

C_23:process(clk)
	begin
		if(PM_in(44) > PM_in(45)) then
			PM_branches_1(22) <= PM_in(44);
			i_1(22) <=44;
		else 
			PM_branches_1(22) <= PM_in(45);
			i_1(22) <=45;
		end if;
end process;

C_24:process(clk)
	begin
		if(PM_in(46) > PM_in(47)) then
			PM_branches_1(23) <= PM_in(46);
			i_1(23) <=46;
		else 
			PM_branches_1(23) <= PM_in(47);
			i_1(23) <=47;
		end if;
end process;	

C_25:process(clk)
	begin
		if(PM_in(48) > PM_in(49)) then
			PM_branches_1(24) <= PM_in(48);
			i_1(24) <=48;
		else 
			PM_branches_1(24) <= PM_in(49);
			i_1(24) <=49;
		end if;
end process;

C_26:process(clk)
	begin
		if(PM_in(50) > PM_in(51)) then
			PM_branches_1(25) <= PM_in(50);
			i_1(25) <=50;
		else 
			PM_branches_1(25) <= PM_in(51);
			i_1(25) <=51;
		end if;
end process;

C_27:process(clk)
	begin
		if(PM_in(52) > PM_in(53)) then
			PM_branches_1(26) <= PM_in(51);
			i_1(26) <=51;
		else 
			PM_branches_1(26) <= PM_in(53);
			i_1(26) <=53;
		end if;
end process;

C_28:process(clk)
	begin
		if(PM_in(54) > PM_in(55)) then
			PM_branches_1(27) <= PM_in(54);
			i_1(27) <=54;
		else 
			PM_branches_1(26) <= PM_in(55);
			i_1(27) <=55;
		end if;
end process;

C_29:process(clk)
	begin
		if(PM_in(56) > PM_in(57)) then
			PM_branches_1(28) <= PM_in(56);
			i_1(28) <=56;
		else 
			PM_branches_1(26) <= PM_in(57);
			i_1(28) <=57;
		end if;
end process;


C_30:process(clk)
	begin
		if(PM_in(58) > PM_in(59)) then
			PM_branches_1(29) <= PM_in(58);
			i_1(29) <=58;
		else 
			PM_branches_1(29) <= PM_in(59);
			i_1(29) <=59;
		end if;
end process;	

C_31:process(clk)
	begin
		if(PM_in(60) > PM_in(61)) then
			PM_branches_1(30) <= PM_in(60);
			i_1(30) <=60;
		else 
			PM_branches_1(30) <= PM_in(61);
			i_1(30) <=61;
		end if;
end process;	

C_32:process(clk)
	begin
		if(PM_in(62) > PM_in(63)) then
			PM_branches_1(31) <= PM_in(62);
			i_1(31) <=62;
		else 
			PM_branches_1(31) <= PM_in(63);
			i_1(31) <=63;
		end if;
end process;		
----------------------------------------------------------------------------------------------------------------

C_P2_1:process(clk)
	begin
		if(PM_branches_1(0) > PM_branches_1(1)) then
			PM_branches_2(0) <= PM_branches_1(0);
			i_2(0) <= i_1(0);
		else 
			PM_branches_1(0) <= PM_branches_1(1);
			i_2(0) <= i_1(1);
		end if;
end process;

C_P2_2:process(clk)
	begin
		if(PM_branches_1(2) > PM_branches_1(3)) then
		
			PM_branches_2(1) <= PM_branches_1(2);
			
			i_2(1) <= i_1(2);
		else 
			PM_branches_1(1) <= PM_branches_1(3);
			
			i_2(1) <= i_1(3);
		end if;
end process;

C_P2_3:process(clk)
	begin
		if(PM_branches_1(4) > PM_branches_1(5)) then
		
			PM_branches_2(2) <= PM_branches_1(4);
			
			i_2(2) <= i_1(4);
		else 
			PM_branches_1(2) <= PM_branches_1(3);
			
			i_2(2) <= i_1(5);
		end if;
end process;

C_P2_4:process(clk)
	begin
		if(PM_branches_1(6) > PM_branches_1(7)) then
		
			PM_branches_2(3) <= PM_branches_1(6);
			
			i_2(3) <= i_1(6);
		else 
			PM_branches_1(3) <= PM_branches_1(7);
			
			i_2(3) <= i_1(7);
		end if;
end process;

C_P2_5:process(clk)
	begin
		if(PM_branches_1(8) > PM_branches_1(9)) then
		
			PM_branches_2(4) <= PM_branches_1(8);
			
			i_2(4) <= i_1(8);
		else 
			PM_branches_1(4) <= PM_branches_1(9);
			
			i_2(4) <= i_1(9);
		end if;
end process;

C_P2_6:process(clk)
	begin
		if(PM_branches_1(10) > PM_branches_1(11)) then
		
			PM_branches_2(5) <= PM_branches_1(10);
			
			i_2(5) <= i_1(10);
		else 
			PM_branches_1(5) <= PM_branches_1(11);
			
			i_2(5) <= i_1(11);
		end if;
end process;

C_P2_7:process(clk)
	begin
		if(PM_branches_1(12) > PM_branches_1(13)) then
		
			PM_branches_2(6) <= PM_branches_1(12);
			
			i_2(6) <= i_1(12);
		else 
			PM_branches_1(6) <= PM_branches_1(13);
			
			i_2(6) <= i_1(13);
		end if;
end process;

C_P2_8:process(clk)
	begin
		if(PM_branches_1(14) > PM_branches_1(15)) then
		
			PM_branches_2(7) <= PM_branches_1(14);
			
			i_2(7) <= i_1(14);
		else 
			PM_branches_1(7) <= PM_branches_1(15);
			
			i_2(7) <= i_1(15);
		end if;
end process;

C_P2_9:process(clk)
	begin
		if(PM_branches_1(16) > PM_branches_1(17)) then
		
			PM_branches_2(8) <= PM_branches_1(16);
			
			i_2(8) <= i_1(16);
		else 
			PM_branches_1(8) <= PM_branches_1(17);
			
			i_2(8) <= i_1(17);
		end if;
end process;

C_P2_10:process(clk)
	begin
		if(PM_branches_1(18) > PM_branches_1(19)) then
		
			PM_branches_2(9) <= PM_branches_1(18);
			
			i_2(9) <= i_1(18);
		else 
			PM_branches_1(9) <= PM_branches_1(19);
			
			i_2(9) <= i_1(19);
		end if;
end process;

C_P2_11:process(clk)
	begin
		if(PM_branches_1(20) > PM_branches_1(21)) then
		
			PM_branches_2(10) <= PM_branches_1(20);
			
			i_2(10) <= i_1(20);
		else 
			PM_branches_1(10) <= PM_branches_1(21);
			
			i_2(10) <= i_1(21);
		end if;
end process;

C_P2_12:process(clk)
	begin
		if(PM_branches_1(22) > PM_branches_1(23)) then
		
			PM_branches_2(11) <= PM_branches_1(22);
			
			i_2(11) <= i_1(22);
		else 
			PM_branches_1(11) <= PM_branches_1(23);
			
			i_2(11) <= i_1(23);
		end if;
end process;

C_P2_13:process(clk)
	begin
		if(PM_branches_1(24) > PM_branches_1(25)) then
		
			PM_branches_2(12) <= PM_branches_1(24);
			
			i_2(12) <= i_1(24);
		else 
			PM_branches_1(12) <= PM_branches_1(25);
			
			i_2(12) <= i_1(25);
		end if;
end process;

C_P2_14:process(clk)
	begin
		if(PM_branches_1(26) > PM_branches_1(27)) then
		
			PM_branches_2(13) <= PM_branches_1(26);
			
			i_2(13) <= i_1(26);
		else 
			PM_branches_1(13) <= PM_branches_1(27);
			
			i_2(13) <= i_1(27);
		end if;
end process;

C_P2_15:process(clk)
	begin
		if(PM_branches_1(28) > PM_branches_1(29)) then
		
			PM_branches_2(14) <= PM_branches_1(28);
			
			i_2(14) <= i_1(28);
		else 
			PM_branches_1(14) <= PM_branches_1(29);
			
			i_2(14) <= i_1(29);
		end if;
end process;

C_P2_16:process(clk)
	begin
		if(PM_branches_1(30) > PM_branches_1(31)) then
		
			PM_branches_2(15) <= PM_branches_1(30);
			
			i_2(15) <= i_1(30);
		else 
			PM_branches_1(15) <= PM_branches_1(31);
			
			i_2(15) <= i_1(31);
		end if;
end process;
----------------------------------------------------------------------------------------------------------------------
C_P3_1:process(clk)
	begin
		if(PM_branches_2(0) > PM_branches_2(1)) then
		
			PM_branches_3(0) <= PM_branches_2(0);
			
			i_3(0) <= i_2(0);
		else 
			PM_branches_3(0) <= PM_branches_2(1);
			
			i_3(0) <= i_2(1);
		end if;
end process;

C_P3_2:process(clk)
	begin
		if(PM_branches_2(2) > PM_branches_2(3)) then
		
			PM_branches_3(1) <= PM_branches_2(2);
			
			i_3(1) <= i_2(2);
		else 
			PM_branches_3(1) <= PM_branches_2(3);
			
			i_3(1) <= i_2(3);
		end if;
end process;

C_P3_3:process(clk)
	begin
		if(PM_branches_2(4) > PM_branches_2(5)) then
		
			PM_branches_3(2) <= PM_branches_2(4);
			
			i_3(2) <= i_2(4);
		else 
			PM_branches_3(2) <= PM_branches_2(5);
			
			i_3(2) <= i_2(5);
		end if;
end process;

C_P3_4:process(clk)
	begin
		if(PM_branches_2(6) > PM_branches_2(7)) then
		
			PM_branches_3(3) <= PM_branches_2(6);
			
			i_3(3) <= i_2(6);
		else 
			PM_branches_3(3) <= PM_branches_2(7);
			
			i_3(3) <= i_2(7);
		end if;
end process;

C_P3_5:process(clk)
	begin
		if(PM_branches_2(8) > PM_branches_2(9)) then
		
			PM_branches_3(4) <= PM_branches_2(8);
			
			i_3(4) <= i_2(8);
		else 
			PM_branches_3(4) <= PM_branches_2(9);
			
			i_3(4) <= i_2(9);
		end if;
end process;

C_P3_6:process(clk)
	begin
		if(PM_branches_2(10) > PM_branches_2(11)) then
		
			PM_branches_3(5) <= PM_branches_2(10);
			
			i_3(5) <= i_2(10);
		else 
			PM_branches_3(5) <= PM_branches_2(11);
			
			i_3(5) <= i_2(11);
		end if;
end process;

C_P3_7:process(clk)
	begin
		if(PM_branches_2(12) > PM_branches_2(13)) then
		
			PM_branches_3(6) <= PM_branches_2(12);
			
			i_3(6) <= i_2(12);
		else 
			PM_branches_3(6) <= PM_branches_2(13);
			
			i_3(6) <= i_2(13);
		end if;
end process;

C_P3_8:process(clk)
	begin
		if(PM_branches_2(14) > PM_branches_2(15)) then
		
			PM_branches_3(7) <= PM_branches_2(14);
			
			i_3(7) <= i_2(14);
		else 
			PM_branches_3(7) <= PM_branches_2(15);
			
			i_3(7) <= i_2(15);
		end if;
end process;
------------------------------------------------------------------------------------------------------
C_P4_1:process(clk)
	begin
		if(PM_branches_3(0) > PM_branches_3(1)) then
		
			PM_branches_4(0) <= PM_branches_3(0);
			
			i_4(0) <= i_3(0);
		else 
			PM_branches_4(0) <= PM_branches_3(1);
			
			i_4(0) <= i_3(1);
		end if;
end process;

C_P4_2:process(clk)
	begin
		if(PM_branches_3(2) > PM_branches_3(3)) then
		
			PM_branches_4(1) <= PM_branches_3(2);
			
			i_4(1) <= i_3(2);
		else 
			PM_branches_4(1) <= PM_branches_3(3);
			
			i_4(1) <= i_3(3);
		end if;
end process;

C_P4_3:process(clk)
	begin
		if(PM_branches_3(4) > PM_branches_3(5)) then
		
			PM_branches_4(2) <= PM_branches_3(4);
			
			i_4(2) <= i_3(4);
		else 
			PM_branches_4(2) <= PM_branches_3(5);
			
			i_4(2) <= i_3(5);
		end if;
end process;

C_P4_4:process(clk)
	begin
		if(PM_branches_3(6) > PM_branches_3(7)) then
		
			PM_branches_4(3) <= PM_branches_3(6);
			
			i_4(3) <= i_3(6);
		else 
			PM_branches_4(3) <= PM_branches_3(7);
			
			i_4(3) <= i_3(7);
		end if;
end process;
-------------------------------------------------------------------------------------------------------
C_P5_1:process(clk)
	begin
		if(PM_branches_4(0) > PM_branches_4(1)) then
		
			PM_branches_5(0) <= PM_branches_4(0);
			
			i_5(0) <= i_4(0);
		else 
			PM_branches_5(0) <= PM_branches_4(1);
			
			i_5(0) <= i_4(1);
		end if;
end process;

C_P5_2:process(clk)
	begin
		if(PM_branches_4(2) > PM_branches_4(3)) then
		
			PM_branches_5(1) <= PM_branches_4(2);
			
			i_5(1) <= i_4(2);
		else 
			PM_branches_5(1) <= PM_branches_4(3);
			
			i_5(1) <= i_4(3);
		end if;
end process;
--------------------------------------------------------------------------------------------------------------------
C_P6_1:process(clk)
    variable i_6 : nat;
	begin
		if(PM_branches_5(0) > PM_branches_5(1)) then
		
			PM_branches_6 <= PM_branches_5(0);
			
			i_6 := i_5(0);
		else 
			PM_branches_6 <= PM_branches_5(1);
			
			i_6 := i_5(1);
		end if;
		
		decoded_word(34)<= data_in35(i_6);
		i_6 := states33(i_6);
		decoded_word(33)<= data_in34(i_6);
		i_6 := states32(i_6);
		decoded_word(32)<= data_in33(i_6);
		i_6 := states31(i_6);
		decoded_word(31)<= data_in32(i_6);
		i_6 := states30(i_6);
		decoded_word(30)<= data_in31(i_6);
		i_6 := states29(i_6);
		decoded_word(29)<= data_in30(i_6);
		i_6 := states28(i_6);
		decoded_word(28)<= data_in29(i_6);
		i_6 := states27(i_6);
		decoded_word(27)<= data_in28(i_6);
		i_6 := states26(i_6);
		decoded_word(26)<= data_in27(i_6);
		i_6 := states25(i_6);
		decoded_word(25)<= data_in26(i_6);
		i_6 := states24(i_6);
		decoded_word(24)<= data_in25(i_6);
		i_6 := states23(i_6);
		decoded_word(23)<= data_in24(i_6);
		i_6 := states22(i_6);
		decoded_word(22)<= data_in23(i_6);
		i_6 := states21(i_6);
		decoded_word(21)<= data_in22(i_6);
		i_6 := states20(i_6);
		decoded_word(20)<= data_in21(i_6);
		i_6 := states19(i_6);
		decoded_word(19)<= data_in20(i_6);
		i_6 := states18(i_6);
		decoded_word(18)<= data_in19(i_6);
		i_6 := states17(i_6);
		decoded_word(17)<= data_in18(i_6);
		i_6 := states16(i_6);
		decoded_word(16)<= data_in17(i_6);
		i_6 := states15(i_6);
		decoded_word(15)<= data_in16(i_6);
		i_6 := states14(i_6);
		decoded_word(14)<= data_in15(i_6);
		i_6 := states13(i_6);
		decoded_word(13)<= data_in14(i_6);
		i_6 := states12(i_6);
		decoded_word(12)<= data_in13(i_6);
		i_6 := states11(i_6);
		decoded_word(11)<= data_in12(i_6);
		i_6 := states10(i_6);
		decoded_word(10)<= data_in11(i_6);
		i_6 := states9(i_6);
		decoded_word(9)<= data_in10(i_6);
		i_6 := states8(i_6);
		decoded_word(8)<= data_in9(i_6);
		i_6 := states7(i_6);
		decoded_word(7)<= data_in8(i_6);
		------------------------------------------------------------------------		
		if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(6)<= data_in7(i_6);		
		if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(5)<= data_in6(i_6);			
		if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(4)<= data_in5(i_6);
		if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(3)<= data_in4(i_6);
		if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(2)<= data_in3(i_6);
		if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(1)<= data_in2(i_6);	
	if(i_6*2>= 64) then 
			i_6 := 64 - (i_6*2);
		else 
			i_6:= i_6*2;
		end if;
		decoded_word(0)<= data_in1(i_6);			
end process;
-------------------------------------------------------------------------------------------------------------------
end architecture;


