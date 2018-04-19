library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (
	  i_bit1    : in  std_logic;
      i_bit2    : in  std_logic;
      i_bit3    : in  std_logic;
	  o_bit1 	: out std_logic
    );
end IR;
 
architecture rtl of IR is
begin
process (i_bit1, i_bit2, i_bit3)
begin
if (i_bit1 = '1' and i_bit2 = '0') or (i_bit1 = '0' and i_bit3 = '0') then o_bit1 <= '1';
else o_bit1 <= '0';
end if;
end process;
end rtl;