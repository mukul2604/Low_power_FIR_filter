library IEEE;
use IEEE.STD_LOGIC_1164.all;

package my_package is  
-- Declare functions and procedure
function XSLL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR;
function XSRL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR;
function XSRA (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR;
function XSLA (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR;
function XROL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR;
function XROR (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR;
end my_package;


package body my_package is
  function XSLL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR
      is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := (others => '0');
    -- Exemplar synthesis directives :
    --attribute SYNTHESIS_RETURN of RESULT:variable is "SLL" ;
  begin
    if COUNT <= ARG_L then
      RESULT(ARG_L downto COUNT) := XARG(ARG_L-COUNT downto 0);
    end if;
    return RESULT;
  end XSLL;
  
  function XSLA (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR
      is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := (others => '0');
    -- Exemplar synthesis directives :
    --attribute SYNTHESIS_RETURN of RESULT:variable is "SLL" ;
  begin
    if COUNT <= ARG_L then
      RESULT(ARG_L downto COUNT) := XARG(ARG_L-COUNT downto 0);
    end if;
    return RESULT;
  end XSLA;

  function XSRL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR
      is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := (others => '0');
    -- Exemplar synthesis directives :
    --attribute SYNTHESIS_RETURN of RESULT:variable is "SRL" ;
  begin
    if COUNT <= ARG_L then
      RESULT(ARG_L-COUNT downto 0) := XARG(ARG_L downto COUNT);
    end if;
    return RESULT;
  end XSRL;

  function XSRA (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR
      is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0);
    variable XCOUNT: NATURAL := COUNT;
    -- Exemplar synthesis directives :
    --attribute SYNTHESIS_RETURN of RESULT:variable is "SRA" ;
  begin
    if ((ARG'LENGTH <= 1) or (XCOUNT = 0)) then return ARG;
    else
      if (XCOUNT > ARG_L) then XCOUNT := ARG_L;
      end if;
      RESULT(ARG_L-XCOUNT downto 0) := XARG(ARG_L downto XCOUNT);
      RESULT(ARG_L downto (ARG_L - XCOUNT + 1)) := (others => XARG(ARG_L));
    end if;
    return RESULT;
  end XSRA;

  function XROL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR
      is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := XARG;
    variable COUNTM: INTEGER;
    -- Exemplar synthesis directives :
    --attribute SYNTHESIS_RETURN of RESULT:variable is "ROL" ;
  begin
    COUNTM := COUNT mod (ARG_L + 1);
    if COUNTM /= 0 then
      RESULT(ARG_L downto COUNTM) := XARG(ARG_L-COUNTM downto 0);
      RESULT(COUNTM-1 downto 0) := XARG(ARG_L downto ARG_L-COUNTM+1);
    end if;
    return RESULT;
  end XROL;

  function XROR (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL) return STD_LOGIC_VECTOR
      is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := XARG;
    variable COUNTM: INTEGER;
    -- Exemplar synthesis directives :
    --attribute SYNTHESIS_RETURN of RESULT:variable is "ROR" ;
  begin
    COUNTM := COUNT mod (ARG_L + 1);
    if COUNTM /= 0 then
      RESULT(ARG_L-COUNTM downto 0) := XARG(ARG_L downto COUNTM);
      RESULT(ARG_L downto ARG_L-COUNTM+1) := XARG(COUNTM-1 downto 0);
    end if;
    return RESULT;
  end XROR;
 
end my_package;
