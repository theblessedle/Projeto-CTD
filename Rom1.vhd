library ieee;
use ieee.std_logic_1164.all;

entity ROM1 is port (

    address : in  std_logic_vector(3 downto 0);
    data    : out std_logic_vector(15 downto 0));
    
end ROM1;

architecture Rom_Arch of ROM1 is

type memory is array (00 to 15) of std_logic_vector(15 downto 0);
constant my_Rom : memory := (

	00 => "0001001000110100",  --1234   ROM1 esta totalmente preenchida como exemplo. 
	01 => "0000001101000101",  --0345   Eh necessario preencher a ROM1, ROM2 e ROM3 com sequencias de sua escolha.
   02 => "0000001001000101",  --0245
	03 => "0001001101000101",  --1345
	04 => "0001001001000101",  --1245
	05 => "0101010000110010",  --5432
	06 => "0101001100100001",  --5321
	07 => "0100000000100011",  --4023
	08 => "0011010100100001",  --3521
	09 => "0011000100100000",  --3120
   10 => "0100010100010010",  --4512
	11 => "0101000100000010",  --5102
	12 => "0101010000000001",  --5401
	13 => "0000001000110101",  --0235
	14 => "0010000001010100",  --2054
	15 => "0010010000110001"); --2431
	 
	
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