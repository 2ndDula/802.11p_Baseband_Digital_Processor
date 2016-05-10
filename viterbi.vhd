library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.my_data_types.all;

entity viterbi is 
port(
clk: in std_logic;
rst: in std_logic;
in_bits : in std_logic_vector(69 downto 0);
decoded_bits: out std_logic_vector(34 downto 0)
);
end entity;

architecture struct of viterbi is 

component ACS_G1 is 
port(
clk: in std_logic;
rst : in std_logic;
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(1 downto 0);
PM_out : out vector_array(0 To 1)
);
end component;

component ACS_G2 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 1);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(3 downto 0);
PM_out : out vector_array(0 To 3)
);
end component;

component ACS_G3 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 3);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(7 downto 0);
PM_out : out vector_array(0 To 7)
);
end component;

component ACS_G4 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 7);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(15 downto 0);
PM_out : out vector_array(0 To 15)
);
end component;

component ACS_G5 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 15);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(31 downto 0);
PM_out : out vector_array(0 To 31)
);
end component;

component ACS_G6 is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 31);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(63 downto 0);
PM_out : out vector_array(0 To 63)
);
end component;

component ACS is 
port(
clk: in std_logic;
rst : in std_logic;
PM_in : in vector_array(0 To 63);
code_word : in std_logic_vector(1 downto 0);
data_out : out std_logic_vector(63 downto 0);
PM_out : out vector_array(0 To 63);
Previous_state : out mem_0
);
end component;

component Traceback is 
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
decoded_word : out std_logic_vector(34 downto 0)
);
end component;
signal do1 : std_logic_vector(1 downto 0);
signal do2 : std_logic_vector(3 downto 0);
signal do3 : std_logic_vector(7 downto 0);
signal do4 : std_logic_vector(15 downto 0);
signal do5 : std_logic_vector(31 downto 0);
signal do6 : std_logic_vector(63 downto 0);
signal do7 : std_logic_vector(63 downto 0);
signal do8 : std_logic_vector(63 downto 0);
signal do9 : std_logic_vector(63 downto 0);
signal do10: std_logic_vector(63 downto 0);
signal do11 : std_logic_vector(63 downto 0);
signal do12 : std_logic_vector(63 downto 0);
signal do13 : std_logic_vector(63 downto 0);
signal do14 : std_logic_vector(63 downto 0);
signal do15 : std_logic_vector(63 downto 0);
signal do16 : std_logic_vector(63 downto 0);
signal do17 : std_logic_vector(63 downto 0);
signal do18 : std_logic_vector(63 downto 0);
signal do19 : std_logic_vector(63 downto 0);
signal do20 : std_logic_vector(63 downto 0);
signal do21 : std_logic_vector(63 downto 0);
signal do22 : std_logic_vector(63 downto 0);
signal do23 : std_logic_vector(63 downto 0);
signal do24 : std_logic_vector(63 downto 0);
signal do25 : std_logic_vector(63 downto 0);
signal do26 : std_logic_vector(63 downto 0);
signal do27 : std_logic_vector(63 downto 0);
signal do28 : std_logic_vector(63 downto 0);
signal do29 : std_logic_vector(63 downto 0);
signal do30 : std_logic_vector(63 downto 0);
signal do31 : std_logic_vector(63 downto 0);
signal do32 : std_logic_vector(63 downto 0);
signal do33 : std_logic_vector(63 downto 0);
signal do34 : std_logic_vector(63 downto 0);
signal do35 : std_logic_vector(63 downto 0);
signal po1 : vector_array(0 to 1);
signal po2 : vector_array(0 to 3);
signal po3 : vector_array(0 to 7);
signal po4 : vector_array(0 to 15);
signal po5 : vector_array(0 to 31);
signal po6 : vector_array(0 to 63);
signal po7: vector_array(0 to 63);
signal po8: vector_array(0 to 63);
signal po9: vector_array(0 to 63);
signal po10: vector_array(0 to 63);
signal po11: vector_array(0 to 63);
signal po12: vector_array(0 to 63);
signal po13: vector_array(0 to 63);
signal po14: vector_array(0 to 63);
signal po15: vector_array(0 to 63);
signal po16: vector_array(0 to 63);
signal po17: vector_array(0 to 63);
signal po18: vector_array(0 to 63);
signal po19: vector_array(0 to 63);
signal po20: vector_array(0 to 63);
signal po21: vector_array(0 to 63);
signal po22: vector_array(0 to 63);
signal po23: vector_array(0 to 63);
signal po24: vector_array(0 to 63);
signal po25: vector_array(0 to 63);
signal po26: vector_array(0 to 63);
signal po27: vector_array(0 to 63);
signal po28: vector_array(0 to 63);
signal po29: vector_array(0 to 63);
signal po30: vector_array(0 to 63);
signal po31: vector_array(0 to 63);
signal po32: vector_array(0 to 63);
signal po33: vector_array(0 to 63);
signal po34: vector_array(0 to 63);
signal po35: vector_array(0 to 63);
signal ps1 : mem_0;
signal ps2 : mem_0;
signal ps3 : mem_0;
signal ps4 : mem_0;
signal ps5 : mem_0;
signal ps6 : mem_0;
signal ps7 : mem_0;
signal ps8 : mem_0;
signal ps9 : mem_0;
signal ps10 : mem_0;
signal ps11 : mem_0;
signal ps12 : mem_0;
signal ps13 : mem_0;
signal ps14 : mem_0;
signal ps15 : mem_0;
signal ps16 : mem_0;
signal ps17 : mem_0;
signal ps18 : mem_0;
signal ps19 : mem_0;
signal ps20 : mem_0;
signal ps21 : mem_0;
signal ps22 : mem_0;
signal ps23 : mem_0;
signal ps24 : mem_0;
signal ps25 : mem_0;
signal ps26 : mem_0;
signal ps27 : mem_0;
signal ps28 : mem_0;
signal ps29 : mem_0;

begin
A1: ACS_G1 port map(clk=> clk, rst=> rst, code_word => in_bits(1 downto 0), data_out => do1, PM_out => po1); 
A2: ACS_G2 port map(clk=> clk, rst=> rst, PM_in => po1, code_word => in_bits(3 downto 2), data_out => do2, PM_out => po2); 
A3: ACS_G3 port map(clk=> clk, rst=> rst, PM_in => po2, code_word => in_bits(5 downto 4), data_out => do3, PM_out => po3); 
A4: ACS_G4 port map(clk=> clk, rst=> rst, PM_in => po3, code_word => in_bits(7 downto 6), data_out => do4, PM_out => po4); 
A5: ACS_G5 port map(clk=> clk, rst=> rst, PM_in => po4, code_word => in_bits(9 downto 8), data_out => do5, PM_out => po5); 
A6: ACS_G6 port map(clk=> clk, rst=> rst, PM_in => po5, code_word => in_bits(11 downto 10), data_out => do6, PM_out => po6); 
A7: ACS port map(clk=> clk, rst=> rst, PM_in => po6, code_word => in_bits(13 downto 12), data_out => do7, PM_out => po7, Previous_state=>ps1); 
A8: ACS port map(clk=> clk, rst=> rst, PM_in => po7, code_word => in_bits(15 downto 14), data_out => do8, PM_out => po8, Previous_state=>ps2);
A9: ACS port map(clk=> clk, rst=> rst, PM_in => po8, code_word => in_bits(17 downto 16), data_out => do9, PM_out => po9, Previous_state=>ps3); 
A10: ACS port map(clk=> clk, rst=> rst, PM_in => po9, code_word => in_bits(19 downto 18), data_out => do10, PM_out => po10, Previous_state=>ps4); 
A11: ACS port map(clk=> clk, rst=> rst, PM_in => po10, code_word => in_bits(21 downto 20), data_out => do11, PM_out => po11, Previous_state=>ps5); 
A12: ACS port map(clk=> clk, rst=> rst, PM_in => po11, code_word => in_bits(23 downto 22), data_out => do12, PM_out => po12, Previous_state=>ps6); 
A13: ACS port map(clk=> clk, rst=> rst, PM_in => po12, code_word => in_bits(25 downto 24), data_out => do13, PM_out => po13, Previous_state=>ps7); 
A14: ACS port map(clk=> clk, rst=> rst, PM_in => po13, code_word => in_bits(27 downto 26), data_out => do14, PM_out => po14, Previous_state=>ps8); 
A15: ACS port map(clk=> clk, rst=> rst, PM_in => po14, code_word => in_bits(29 downto 28), data_out => do15, PM_out => po15, Previous_state=>ps9); 
A16: ACS port map(clk=> clk, rst=> rst, PM_in => po15, code_word => in_bits(31 downto 30), data_out => do16, PM_out => po16, Previous_state=>ps10); 
A17: ACS port map(clk=> clk, rst=> rst, PM_in => po16, code_word => in_bits(33 downto 32), data_out => do17, PM_out => po17, Previous_state=>ps11); 
A18: ACS port map(clk=> clk, rst=> rst, PM_in => po17, code_word => in_bits(35 downto 34), data_out => do18, PM_out => po18, Previous_state=>ps12); 
A19: ACS port map(clk=> clk, rst=> rst, PM_in => po18, code_word => in_bits(37 downto 36), data_out => do19, PM_out => po19, Previous_state=>ps13); 
A20: ACS port map(clk=> clk, rst=> rst, PM_in => po19, code_word => in_bits(39 downto 38), data_out => do20, PM_out => po20, Previous_state=>ps14); 
A21: ACS port map(clk=> clk, rst=> rst, PM_in => po20, code_word => in_bits(41 downto 40), data_out => do21, PM_out => po21, Previous_state=>ps15); 
A22: ACS port map(clk=> clk, rst=> rst, PM_in => po21, code_word => in_bits(43 downto 42), data_out => do22, PM_out => po22, Previous_state=>ps16);
A23: ACS port map(clk=> clk, rst=> rst, PM_in => po22, code_word => in_bits(45 downto 44), data_out => do23, PM_out => po23, Previous_state=>ps17);
A24: ACS port map(clk=> clk, rst=> rst, PM_in => po23, code_word => in_bits(47 downto 46), data_out => do24, PM_out => po24, Previous_state=>ps18); 
A25: ACS port map(clk=> clk, rst=> rst, PM_in => po24, code_word => in_bits(49 downto 48), data_out => do25, PM_out => po25, Previous_state=>ps19); 
A26: ACS port map(clk=> clk, rst=> rst, PM_in => po25, code_word => in_bits(51 downto 50), data_out => do26, PM_out => po26, Previous_state=>ps20); 
A27: ACS port map(clk=> clk, rst=> rst, PM_in => po26, code_word => in_bits(53 downto 52), data_out => do27, PM_out => po27, Previous_state=>ps21);
A28: ACS port map(clk=> clk, rst=> rst, PM_in => po27, code_word => in_bits(55 downto 54), data_out => do28, PM_out => po28, Previous_state=>ps22);
A29: ACS port map(clk=> clk, rst=> rst, PM_in => po28, code_word => in_bits(57 downto 56), data_out => do29, PM_out => po29, Previous_state=>ps23);
A30: ACS port map(clk=> clk, rst=> rst, PM_in => po29, code_word => in_bits(59 downto 58), data_out => do30, PM_out => po30, Previous_state=>ps24); 
A31: ACS port map(clk=> clk, rst=> rst, PM_in => po30, code_word => in_bits(61 downto 60), data_out => do31, PM_out => po31, Previous_state=>ps25); 
A32: ACS port map(clk=> clk, rst=> rst, PM_in => po31, code_word => in_bits(63 downto 62), data_out => do32, PM_out => po32, Previous_state=>ps26); 
A33: ACS port map(clk=> clk, rst=> rst, PM_in => po32, code_word => in_bits(65 downto 64), data_out => do33, PM_out => po33, Previous_state=>ps27); 
A34: ACS port map(clk=> clk, rst=> rst, PM_in => po33, code_word => in_bits(67 downto 66), data_out => do34, PM_out => po34, Previous_state=>ps28); 
A35: ACS port map(clk=> clk, rst=> rst, PM_in => po33, code_word => in_bits(69 downto 68), data_out => do35, PM_out => po35, Previous_state=>ps29); 
T1 : Traceback port map(
clk => clk,
rst => rst,
PM_in => po35,
data_in1 => do1,
data_in2 => do2,
data_in3 => do3,
data_in4 => do4,
data_in5 => do5,
data_in6 => do6,
data_in7 => do7,
data_in8 => do8,
data_in9 => do9,
data_in10 => do10,
data_in11 => do11,
data_in12 => do12,
data_in13 => do13,
data_in14 => do14,
data_in15 => do15,
data_in16 => do16,
data_in17 => do17,
data_in18 => do18,
data_in19 => do19,
data_in20 => do20,
data_in21 => do21,
data_in22 => do22,
data_in23 => do23,
data_in24 => do24,
data_in25 => do25,
data_in26 => do26,
data_in27 => do27,
data_in28 => do28,
data_in29 => do29,
data_in30 => do30,
data_in31 => do31,
data_in32 => do32,
data_in33 => do33,
data_in34 => do34,
data_in35 => do35,
states7 => ps1,
states8 => ps2,
states9 => ps3,
states10 => ps4,
states11 => ps5,
states12 => ps6,
states13 => ps7,
states14 => ps8,
states15 => ps9,
states16 => ps10,
states17 => ps11,
states18 => ps12,
states19 => ps13,
states20 => ps14,
states21 => ps15,
states22 => ps16,
states23 => ps17,
states24 => ps18,
states25 => ps19,
states26 => ps20,
states27 => ps21,
states28 => ps22,
states29 => ps23,
states30 => ps24,
states31 => ps25,
states32 => ps26,
states33 => ps27,
states34 => ps28,
states35 => ps29,
decoded_word => decoded_bits);
end architecture;



























