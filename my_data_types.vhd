library ieee;
use ieee.std_logic_1164.all;

package my_data_types is
	type vector_array is array (Natural Range <>) of std_logic_vector(6 downto 0);
	subtype Nat IS natural RANGE 0 TO 63;
	type mem_0 is array (0 to 63) of Nat;
	type mem_1 is array (0 to 31) of Nat;
	type mem_2 is array (0 to 15) of Nat;
	type mem_3 is array (0 to 7) of Nat;
	type mem_4 is array (0 to 3) of Nat;
	type mem_5 is array (0 to 1) of Nat;
end my_data_types;

-- Define a array to be used as a port 

