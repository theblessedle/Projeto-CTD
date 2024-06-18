library ieee;
use ieee.std_logic_1164.all;

entity ROM0 is port (

    address : in  std_logic_vector(3 downto 0);
    data    : out std_logic_vector(15 downto 0));
    
end ROM0;

architecture Rom_Arch of ROM0 is

type memory is array (00 to 15) of std_logic_vector(15 downto 0);
constant my_Rom : memory := (

	00 => "1001100001110110",  --9876   ROM0 esta totalmente preenchida como exemplo. 
	01 => "0010100100000111",  --2907   Eh necessario preencher a ROM1, ROM2 e ROM3 com sequencias de sua escolha.
   02 => "0000010110011000",  --0598
	03 => "0010100000011001",  --2819
	04 => "0111100110000000",  --7980
	05 => "1001001000010100",  --9214
	06 => "0000000110011000",  --0198
	07 => "1000100100010000",  --8910
	08 => "0001000010000100",  --1084
	09 => "0101011010011000",  --5698
   10 => "0110100100010000",  --6910
	11 => "0111100100100011",  --7923
	12 => "0011100100001000",  --3908
	13 => "1000000000100011",  --8023
	14 => "0010000010011000",  --2098
	15 => "0111100100000001"); --7901
	 
	
begin
   process (address)
   begin
       case address is
       when "0000" => data <= my_rom(00);
       when "0001" => data <= my_rom(01);
       when "0010" => data <= my_rom(02);
       when "0011" => data <= my_rom(03);
       when "0100" => data <= my_rom(04);
       when "0101" => data <= my_rom(05);
       when "0110" => data <= my_rom(06);
       when "0111" => data <= my_rom(07);
       when "1000" => data <= my_rom(08);
       when "1001" => data <= my_rom(09);
	    when "1010" => data <= my_rom(10);
	    when "1011" => data <= my_rom(11);
       when "1100" => data <= my_rom(12);
	    when "1101" => data <= my_rom(13);
	    when "1110" => data <= my_rom(14);
	    when others => data <= my_rom(15);
     end case;
  end process;
end architecture Rom_Arch;