LIBRARY ieee ;
USE ieee.std_logic_1164 .all;
USE ieee.std_logic_unsigned .all;
USE work.my_package.all;
---------------------------------------------------
PACKAGE my_functions is
			FUNCTION coeff_0 (c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_1 (  c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_2 (  c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_3 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_4 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_5 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_6 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_7 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_8 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_9 ( c : std_logic_vector )
			RETURN std_logic_vector ;
			FUNCTION coeff_10 ( c : std_logic_vector )
			RETURN std_logic_vector ;
END my_functions ;
PACKAGE BODY my_functions is
-------------- COEFF_0 ----------------------------
FUNCTION coeff_0 (  c : std_logic_vector )
RETURN std_logic_vector IS
VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
BEGIN
temp := c & "0000000000000000";
shift1 := XSRA(temp, 11 ) ;
shift2 := XSRA(temp, 13 ) ;

return (shift1 + '0'- shift2) ;
END coeff_0 ;
----------------------------------------------------
-------------- COEFF_1 ----------------------------
FUNCTION coeff_1 (  c : std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 9 ) ;
		shift2 := XSRA(temp, 13 ) ;
		shift3 := XSRA(temp, 16 ) ;
		return ( shift1 + shift2 + shift3 ) ;
END coeff_1 ;
-----------------------------------------------------
-------------- COEFF_2 -----------------------------
FUNCTION coeff_2 (  c :  std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 7 ) ;
		shift2 := XSRA(temp, 10 ) ;
		shift3 := XSRA(temp, 14 ) ;
		shift4 := XSRA(temp, 16 ) ;
		return ( shift2 + shift3 + shift4- shift1 ) ;
END coeff_2 ;
-----------------------------------------------------
-------------- COEFF_3 -----------------------------
FUNCTION coeff_3 (  c :  std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 7 ) ;
		shift2 := XSRA(temp, 10 ) ;
		shift3 := XSRA(temp, 14 ) ;
		return (   shift2 + shift3 - shift1  ) ;
END coeff_3 ;
-----------------------------------------------------
-------------- COEFF_4 -----------------------------
FUNCTION coeff_4 (  c : std_logic_vector )
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
		shift1 := XSRA(temp, 4 ) ;
		shift2 := XSRA(temp, 6 ) ;
		shift3 := XSRA(temp, 8 ) ;
		shift4 := XSRA(temp, 10 ) ;

		shift5 := XSRA(temp, 12 ) ;
		shift6 := XSRA(temp, 15 ) ;
		return ( shift1 - shift2 - shift3
		+ shift4 + shift5 + shift6 ) ;
END coeff_4 ;
-----------------------------------------------------
-------------- COEFF_5 -----------------------------
FUNCTION coeff_5 (  c :  std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift5 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 3 ) ;
		shift2 := XSRA(temp, 5 ) ;
		shift3 := XSRA(temp, 7 ) ;
		shift4 := XSRA(temp, 10 ) ;
		shift5 := XSRA(temp, 13 ) ;
		return ( shift1 - shift2 - shift3
		- shift4 + shift5 ) ;
END coeff_5 ;
-----------------------------------------------------
-------------- COEFF_6 -----------------------------
FUNCTION coeff_6 (  c :  std_logic_vector )
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
		shift1 := XSRA(temp, 4 ) ;
		shift2 := XSRA(temp, 6 ) ;
		shift3 := XSRA(temp, 8 ) ;
		shift4 := XSRA(temp, 10 ) ;
		shift5 := XSRA(temp, 12 ) ;
		shift6 := XSRA(temp, 15 ) ;
		return ( shift1 - shift2 - shift3
		+ shift4 + shift5 + shift6 ) ;
END coeff_6 ;
-----------------------------------------------------
-------------- COEFF_7 -----------------------------
FUNCTION coeff_7 (  c :  std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 :std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 7 ) ;
		shift2 := XSRA(temp, 10 ) ;
		shift3 := XSRA(temp, 14 ) ;
		return (   shift2 + shift3 - shift1 ) ;
END coeff_7 ;
-----------------------------------------------------
-------------- COEFF_8 -----------------------------

FUNCTION coeff_8 (  c :  std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 :std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift4 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 7 ) ;
		shift2 := XSRA(temp, 10 ) ;
		shift3 := XSRA(temp, 14 ) ;
		shift4 := XSRA(temp, 16 ) ;
		return (   shift2 + shift3 + shift4 - shift1 ) ;
END coeff_8 ;
-----------------------------------------------------
-------------- COEFF_9 -----------------------------
FUNCTION coeff_9 (  c :  std_logic_vector )
RETURN std_logic_vector IS
			VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
			VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
			VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
			VARIABLE shift3 : std_logic_vector (23 DOWNTO 0 ) ;
			BEGIN
			temp := c & "0000000000000000";
			shift1 := XSRA(temp, 9 ) ;
			shift2 := XSRA(temp, 13 ) ;
			shift3 := XSRA(temp, 16 ) ;
			return ( shift1 + shift2 + shift3 ) ;
END coeff_9 ;
-----------------------------------------------------
-------------- COEFF_10 ----------------------------
FUNCTION coeff_10 (  c :  std_logic_vector )
RETURN std_logic_vector IS
		VARIABLE temp : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift1 : std_logic_vector (23 DOWNTO 0 ) ;
		VARIABLE shift2 : std_logic_vector (23 DOWNTO 0 ) ;
		BEGIN
		temp := c & "0000000000000000";
		shift1 := XSRA(temp, 11 ) ;
		shift2 := XSRA(temp, 13 ) ;
		return (shift1 - shift2) ;
		END coeff_10 ;
-----------------------------------------------------
END my_functions ;