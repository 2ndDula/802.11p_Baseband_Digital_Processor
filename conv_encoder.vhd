-- Convoultional Encoder
library ieee;
use ieee.std_logic_1164.all;

entity conv_encoder is
port(
din: in std_logic;
clk: in std_logic;
rst: in std_logic;
dout : out std_logic_vector(1 downto 0)
);
end entity;

architecture structural of conv_encoder is



component dff is
port( clk : in std_logic;
din: in std_logic;
rst: in std_logic;
dout: out std_logic
);
end component dff;

component xor_5 is 
port(
din: in std_logic_vector(4 downto 0);
dout: out std_logic
);
end component xor_5;

component xor_4 is 
port(
din: in std_logic_vector(3 downto 0);
dout: out std_logic
);
end component xor_4;

signal s : std_logic_vector(5 downto 0) := "000000";

begin

C0 : dff port map(
 clk => clk,
 din => din,
 rst=> rst,
 dout=> s(5)
);

C1 : dff port map(
 clk => clk,
 din => s(5),
 rst=> rst,
 dout=> s(4)
);

C2 : dff port map(
 clk => clk,
 din => s(4),
 rst=> rst,
 dout=> s(3)
);

C3 : dff port map(
 clk => clk,
 din => s(3),
 rst=> rst,
 dout=> s(2)
);

C4 : dff port map(
 clk => clk,
 din => s(2),
 rst=> rst,
 dout=> s(1)
);

C5 : dff port map(
 clk => clk,
 din => s(1),
 rst=> rst,
 dout=> s(0)
);

X1: xor_5 port map(
din(0)=> din,
din(1)=> s(5),
din(2)=> s(4),
din(3)=> s(3),
din(4)=> s(0),
dout => dout(0)
);

X2: xor_4 port map(
din(0)=> din,
din(1)=> s(4),
din(2)=> s(1),
din(3)=> s(3),
dout => dout(1)
);
end architecture;



