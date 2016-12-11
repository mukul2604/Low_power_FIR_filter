LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
USE work.my_package.all ;
--------------------------------------------------
-- MY FIR filter
-- Ve r s ion 4 . 0
-- 11 coefficients
-- Binary representation of the coefficients

---------------------------------------------------
PACKAGE my_functions is
		FUNCTION coeff_0 (c:  std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_1 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_2 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_3 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_4 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_5 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_6 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_7 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_8 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_9 (c:std_logic_vector )
		RETURN std_logic_vector ;
		FUNCTION coeff_10 (c:std_logic_vector )
		RETURN std_logic_vector ;
END my_functions ;


PACKAGE BODY my_functions is
			-------------- COEFF_0 -----------------------------------------------
			FUNCTION coeff_0 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := c & "0000000000000000";
					temp :=  XSRA(temp, 16 ) ;
					shift1 := XSLL(temp, 3 ) ;
					shift2 := XSLL(temp, 4 ) ;
					return shift1 + shift2 ;
			END coeff_0 ;
			----------------------------------------------------------------------
			-------------- COEFF_1 ----------------------------------------------
			FUNCTION coeff_1 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift0 : std_logic_vector (23 DOWNTO 0 ) ;
	  				VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := c & "0000000000000000";					
					temp := XSRA(temp, 16 ) ;
					shift0:=temp;
					shift1 := XSLL(temp, 3 ) ;
					shift2 := XSLL(temp, 7 ) ;
					return ( shift0 +shift1 + shift2 ) ;
			END coeff_1 ;
			----------------------------------------------------------------------
			-------------- COEFF_2 ----------------------------------------------
			FUNCTION coeff_2 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift0 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift7 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift8 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift9 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := (c) & "0000000000000000";					
					temp := XSRA(temp, 16 ) ;
					shift0:=temp;
					shift1 := XSLL(temp, 1 ) ;
					shift2 := XSLL(temp, 3 ) ;
					shift3 := XSLL(temp, 4 ) ;
					shift4 := XSLL(temp, 5 ) ;
					shift5 := XSLL(temp, 7 ) ;
					shift6 := XSLL(temp, 8 ) ;
					shift7 := XSLL(temp, 13 ) ;
					shift8 := XSLL(temp, 14 ) ;
					shift9 := XSLL(temp, 15 ) ;
					return (shift0+shift1 + shift2 + shift3 +
					shift4 + shift5 + shift6+ shift7 + shift8+shift9 ) ;
			END coeff_2 ;
			----------------------------------------------------------------------
			-------------- COEFF_3 ----------------------------------------------
			FUNCTION coeff_3 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift7 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift8 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift9 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := (c) & x"0000";
					temp := XSRA(temp,16) ;  
					shift1 := XSLL(temp,2 ) ;
					shift2 := XSLL(temp,3 ) ;
					shift3 := XSLL(temp,4 ) ;
					shift4 := XSLL(temp,5 ) ;
					shift5 := XSLL(temp,7 ) ;
					shift6 := XSLL(temp,8 ) ;
					shift7 := XSLL(temp,13);
					shift8 := XSLL(temp,14 ) ;
					shift9 := XSLL(temp,15 ) ;
					return ( shift1 + shift2 + shift3+ shift4 + shift5 + shift6 + shift7+ shift8 + shift9 ) ;
			END coeff_3 ;
			---------------------------------------------------------------------
			-------------- COEFF_4 ---------------------------------------------
			FUNCTION coeff_4 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := c & "0000000000000000";
					temp := XSRA(temp, 16 ) ;
					shift1 := XSLL(temp,1 ) ;
					shift2 := XSLL(temp,4 ) ;
					shift3 := XSLL(temp,6 ) ;
					shift4 := XSLL(temp,8 ) ;
					shift5 := XSLL(temp,9 ) ;
					shift6 := XSLL(temp,11 ) ;
					return ( shift1 + shift2 + shift3 + shift4 + shift5 + shift6 ) ;
			END coeff_4 ;
			---------------------------------------------------------------------
			-------------- COEFF_5 ---------------------------------------------
			FUNCTION coeff_5 (c:std_logic_vector )
			RETURN std_logic_vector IS
						VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
						VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
						VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
						VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
						VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
						VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
						VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
						BEGIN
						temp := c & "0000000000000000";
						temp := XSRA(temp, 16 ) ;
						shift1 := XSLL(temp,3 ) ;
						shift2 := XSLL(temp,6 ) ;
						shift3 := XSLL(temp,7 ) ;
						shift4 := XSLL(temp,8 ) ;
						shift5 := XSLL(temp,10 ) ;
						shift6 := XSLL(temp,12 ) ;
						return ( shift1 + shift2 + shift3 + shift4 + shift5 + shift6 ) ;
			END coeff_5 ;
			----------------------------------------------------------------------
			-------------- COEFF_6 ----------------------------------------------
			FUNCTION coeff_6 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := c & "0000000000000000";
					temp := XSRA(temp, 16 ) ;
					shift1 := XSLL(temp,1 ) ;
					shift2 := XSLL(temp,4 ) ;
					shift3 := XSLL(temp,6 ) ;
					shift4 := XSLL(temp,8 ) ;
					shift5 := XSLL(temp,9 ) ;
					shift6 := XSLL(temp,11 ) ;
					return ( shift1 + shift2 + shift3+ shift4 + shift5 + shift6 ) ;
			END coeff_6 ;
			
			
			
			
			----------------------------------------------------------------------
			-------------- COEFF_7 ----------------------------------------------
			FUNCTION coeff_7 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift7 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift8 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift9 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := ( c) & x"0000";
					temp := XSRA(temp,16) ;  
					shift1 := XSLL(temp,2 ) ;
					shift2 := XSLL(temp,3 ) ;
					shift3 := XSLL(temp,4 ) ;
					shift4 := XSLL(temp,5 ) ;
					shift5 := XSLL(temp,7 ) ;
					shift6 := XSLL(temp,8 ) ;
					shift7 := XSLL(temp,13);
					shift8 := XSLL(temp,14 ) ;
					shift9 := XSLL(temp,15 ) ;
					return ( shift1 + shift2 + shift3+ shift4 + shift5 + shift6 + shift7 + shift8 + shift9 ) ;
			END coeff_7 ;
			---------------------------------------------------------------------
			-------------- COEFF_8 ---------------------------------------------

				FUNCTION coeff_8 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift0 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift6 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift7 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift8 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift9 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := (c) & "0000000000000000";					
					temp := XSRA(temp, 16 ) ;
					shift0:=temp;
					shift1 := XSLL(temp, 1 ) ;
					shift2 := XSLL(temp, 3 ) ;
					shift3 := XSLL(temp, 4 ) ;
					shift4 := XSLL(temp, 5 ) ;
					shift5 := XSLL(temp, 7 ) ;
					shift6 := XSLL(temp, 8 ) ;
					shift7 := XSLL(temp, 13 ) ;
					shift8 := XSLL(temp, 14 ) ;
					shift9 := XSLL(temp, 15 ) ;
					return (shift0+shift1 + shift2 + shift3 +
					shift4 + shift5 + shift6 + shift7 + shift8+shift9) ;
			END coeff_8 ;
			-------------- COEFF_9 -----------------------------------------------
			FUNCTION coeff_9 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift0 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := c & "0000000000000000";					
					temp := XSRA(temp, 16 ) ;					
					shift0:=temp;
					shift1 := XSLL(temp, 3 ) ;
					shift2 := XSLL(temp, 7 ) ;
					return (shift0 + shift1 + shift2 ) ;
			END coeff_9 ;
			----------------------------------------------------------------------
			-------------- COEFF_10 ---------------------------------------------
			FUNCTION coeff_10 (c:std_logic_vector )
			RETURN std_logic_vector IS
					VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
					VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
					BEGIN
					temp := c & "0000000000000000";					
					temp := XSRA(temp, 16 ) ;
					shift1 := XSLL(temp, 3 ) ;
					shift2 := XSLL(temp, 4 ) ;
					return (shift1 + shift2 );
			END coeff_10 ;
			----------------------------------------------------------------------
END my_functions ;