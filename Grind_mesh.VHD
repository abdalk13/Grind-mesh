library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity Grind_mesh is 
    Port ( A : in  STD_LOGIC; 
           B : in  STD_LOGIC; 
           C : in  STD_LOGIC; 
           D : in  STD_LOGIC; 
           Ut1 : out  STD_LOGIC; 
           Ut2 : out  STD_LOGIC); 
end Grind_mesh; 
architecture Dataflow of Grind_mesh is 
   signal intern1 : STD_LOGIC; 
   signal intern2 : STD_LOGIC; 
   signal intern3 : STD_LOGIC; 
   signal intern4 : STD_LOGIC; 
begin 
   intern1 <= C or D; 
   intern2 <= B or not C; 
   intern3 <= B or C or not D; 
   intern4 <= intern1 and intern2 and intern3; 
   Ut1 <= not(intern4 and A); 
   Ut2 <= not(not D and B); 
end Dataflow;
