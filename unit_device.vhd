LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.my_package.all ;
USE work.my_functions.all ;

-------------- ENTITY -----------------------------
ENTITY my_fir IS
		PORT (
					x : IN std_logic_vector(7 downto 0) ;
					clk,rst: IN std_logic ;
					y : OUT std_logic_vector(23 downto 0)
			 );
END my_fir ;
---------------------------------------------------
-------------- ARCHITECTURE -----------------------
ARCHITECTURE rtl of my_fir IS
		TYPE registers IS ARRAY (10 downto 0)OF std_logic_vector (7 downto 0 ) ;
		signal reg : registers ;		
		--------------------PROCESS------------------------
		BEGIN
				process ( clk , rst , reg )
						VARIABLE coeff0 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff1 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff2 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff3 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff4 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff5 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff6 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff7 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff8 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff9 : std_logic_vector (23 downto 0) ;
						VARIABLE coeff10 : std_logic_vector (23 downto 0 ) ;
						BEGIN
								--- reset registers ---
						if ( rst = '1' ) then
								for i in 10 downto 0 loop
								  for j in 7 downto 0 loop
											reg ( i )( j )<= '0';
									end loop;
								end loop ;							
						else if ( clk 'EVENT and clk ='1') then
								for k in 10 downto 1 loop
									reg ( k ) <= reg (k-1);
								end loop ;
								reg ( 0 ) <= x ;
						end if ;
						end if;
								--- multiply coeffwith x and accumulate ---										
										coeff0 := coeff_0(reg(0)(7 downto 0)) ;
										coeff1 := coeff_1(reg(1)(7 downto 0)) ;
										coeff2 := coeff_2(reg(2)(7 downto 0)) ;
										coeff3 := coeff_3(reg(3)(7 downto 0)) ;
										coeff4 := coeff_4(reg(4)(7 downto 0)) ;
										coeff5 := coeff_5(reg(5)(7 downto 0)) ;
										coeff6 := coeff_6(reg(6)(7 downto 0)) ;
										coeff7 := coeff_7(reg(7)(7 downto 0)) ;
										coeff8 := coeff_8(reg(8)(7 downto 0)) ;
										coeff9 := coeff_9(reg(9)(7 downto 0)) ;
										coeff10 := coeff_10(reg( 10 ) ( 7 downto 0 ) ) ;
										y <=coeff0+ coeff1 + coeff2 + coeff3	+ coeff4 + 
												coeff5 + coeff6 + coeff7 + coeff8 + coeff9 + coeff10 ;																		
								--end if;							
				END PROCESS;
END rtl ;