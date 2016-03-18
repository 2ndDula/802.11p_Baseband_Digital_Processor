-- Scrambler/Descrambler 
-- S(x) = x^7 + x^4 + 1

library ieee; 
use ieee.std_logic_1164.all;

entity scrambler is 
  port ( data_in : in std_logic_vector (0 downto 0);
         scram_en, scram_rst, rst, clk : in std_logic;
         data_out : out std_logic_vector (0 downto 0));
end scrambler;

architecture behavioral of scrambler is 

  signal data_c: std_logic_vector (0 downto 0); 
  signal lfsr_q: std_logic_vector (6 downto 0); 
  signal lfsr_c: std_logic_vector (6 downto 0); 

begin 

    lfsr_c(0) <= lfsr_q(6);
    lfsr_c(1) <= lfsr_q(0);
    lfsr_c(2) <= lfsr_q(1);
    lfsr_c(3) <= lfsr_q(2);
    lfsr_c(4) <= lfsr_q(3) xor lfsr_q(6);
    lfsr_c(5) <= lfsr_q(4);
    lfsr_c(6) <= lfsr_q(5);

    data_c(0) <= data_in(0) xor lfsr_q(6);

    process (clk,rst) begin 

      if (rst = '1') then 
        lfsr_q <= b"1111111";
        data_out <= b"0";

      elsif (clk'EVENT and clk = '1') then 

        if (scram_rst = '1') then 
          lfsr_q <= b"1111111";
        else lfsr_q <= lfsr_c; 
        end if; 

        if (scram_en = '1') then 
          data_out <= data_c; 
        end if; 

      end if; 
    end process; 
end behavioral; 