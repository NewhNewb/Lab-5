library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_4to1 is
 port(
 
     D0,D1,D2,D3 : in STD_LOGIC;
     AB : in std_logic_vector (1 downto 0);
     F: out STD_LOGIC
  );
end mux_4to1;

architecture bhv of mux_4to1 is
begin
	F <= D0 when AB = "00" else
		 D1 when AB = "01" else
		 D2 when AB = "10" else
		 D3 when AB = "11";
end bhv;