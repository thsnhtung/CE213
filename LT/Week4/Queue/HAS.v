`timescale 1 ps/ 1 ps
module HAS(
  input Enable, 
  input Direction,
  input Data,
  input Ci,
  output Sum ,
  output Co);
  
  wire Enable_bar, and1, Data_bar, Ci_bar, and2, and3, Direction_bar, and4, and5;

  
 // assign Sum = (~Enable & Data) | (Data & ~Ci) | (Enable & ~Data & Ci);
 // assign Co = (Enable & ~Direction & Data & Ci) | (Enable & Direction & ~Data & Ci);
 
not n1 (Enable_bar, Enable);
and a1 (and1, Enable_bar, Data);

not n2 (Ci_bar, Ci); 
and a2 (and2, Data, Ci_bar);

not n3 (Data_bar, Data);
and a3 (and3, Enable, Data_bar, Ci);

or o1 (Sum, and1, and2, and3);

not n4 (Direction_bar, Direction);
and a4 (and4, Enable, Direction_bar, Data, Ci);

and a5 (and5, Enable, Direction, Data_bar, Ci);

or o2 (Co, and4, and5);


endmodule 
  


