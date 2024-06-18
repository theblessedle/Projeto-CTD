library ieee;
use ieee.std_logic_1164.all;

entity ROM2 is port (

    address : in  std_logic_vector(3 downto 0);
    data    : out std_logic_vector(15 downto 0));
    
end ROM2;

architecture Rom_Arch of ROM2 is

type memory is array (00 to 15) of std_logic_vector(15 downto 0);
constant my_Rom : memory := (

	00 => "0111011001010100",  --7654   ROM2 esta totalmente preenchida como exemplo. 
	01 => "0110011101010001",  --6751   Eh necessario preencher a ROM1, ROM2 e ROM3 com sequencias de sua escolha.
   02 => "0001011101100011",  --1763
	03 => "0101011100100011",  --5723
	04 => "0100011001110011",  --4673
	05 => "0110010100110111",  --6537
	06 => "0000011101010011",  --0753
	07 => "0000011101100101",  --0765
	08 => "0100011001110010",  --4672
	09 => "0001010101000110",  --1546
   10 => "0010011100110110",  --2736
	11 => "0111001000110100",  --7234
	12 => "0110010100010111",  --6517
	13 => "0010011100010110",  --2716
	14 => "0010000001100111",  --2067
	15 => "0111001000000100"); --7204
	 
	
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