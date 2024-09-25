LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY Grind_mesh_tb IS 
END Grind_mesh_tb; 
ARCHITECTURE behavior OF Grind_mesh_tb IS 
   COMPONENT Grind_mesh 
   PORT( 
        A : IN  std_logic; 
        B : IN  std_logic; 
        C : IN  std_logic; 
        D : IN  std_logic; 
        Ut1 : OUT  std_logic; 
        Ut2 : OUT  std_logic 
       ); 
   END COMPONENT;

   --Inputs 
   signal A : std_logic := '0'; 
   signal B : std_logic := '0'; 
   signal C : std_logic := '0'; 
   signal D : std_logic := '0'; 
   --Outputs 
   signal Ut1 : std_logic; 
   signal Ut2 : std_logic; 
BEGIN 
   -- Instantiate the Unit Under Test (UUT) 
   uut: Grind_mesh PORT MAP ( 
          A => A, 
          B => B, 
          C => C, 
          D => D, 
          Ut1 => Ut1, 
          Ut2 => Ut2 
        ); 
   -- Stimulus 
   A <= not A after 50 ns; 
   B <= not B after 100 ns; 
   C <= not C after 200 ns; 
   D <= not D after 400 ns; 
END; 
