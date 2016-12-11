library ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

-------------- ENTITY -----------------------------
entity my_fir_tb is
end my_fir_tb ;
---------------------------------------------------
-------------- ARCHITECTURE -----------------------
architecture my_fir_tb_arch of my_fir_tb is
-------------- COMPONENTS -------------------------
component my_fir
PORT (
x : IN std_logic_vector (7 DOWNTO 0 ) ;
clk , rst : IN std_logic ;
y : OUT std_logic_vector (23 DOWNTO 0)
) ;
end component ;
---------------------------------------------------
signal x : std_logic_vector (7 DOWNTO 0) := x"00";
signal y : std_logic_vector (23 DOWNTO 0):=x"000000";
signal clk : std_logic := '1' ;
signal rst : std_logic ;
constant CLOCK_PERIOD:time := 100 ns;
begin
-- devi c e under t e s t --
dut : my_fir
			port map (
				x => x ,
				y => y ,
				clk => clk ,
				rst => rst
						) ;
			-- clk generator --
			-- clk g ene r a t o r --
CLOCK_process :process
   begin
		clk<= '0';
		wait for CLOCK_PERIOD/2;
		clk <= '1';
		wait for CLOCK_PERIOD/2;
   end process;
			
			-- s t imul a t e dive c e under t e s t --
			wstim : process
			begin
				rst <= '1' ;
				wait until clk ' event and clk = '1' ;
				rst <= '0' ;
				x <= "00000000"; --0
				wait until clk ' event and clk = '1' ;
				x <= "00000001"; --1
				wait until clk ' event and clk = '1' ;
				x <= "00000010"; --2
				wait until clk ' event and clk = '1' ;
				x <= "00000011"; --3
				wait until clk ' event and clk = '1' ;
				x <= "00000100"; --4
				wait until clk ' event and clk = '1' ;
				x <= "00000101"; --5
				wait until clk ' event and clk = '1' ;
				x <= "00000110"; --6
				wait until clk ' event and clk = '1' ;
				x <= "00000111"; --7
				wait until clk ' event and clk = '1' ;
				x <= "11111111"; -- -1
				wait until clk ' event and clk = '1' ;
				x <= "11111110"; -- -2
				wait until clk ' event and clk = '1' ;
				x <= "11111101"; -- -3
				wait until clk ' event and clk = '1' ;
				
				wait ;
end process ;
end ;