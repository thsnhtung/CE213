module HAS(
  input Enable, 
  input Direction,
  input Data,
  input Ci,
  output Sum ,
  output Co);
  
  
  assign Sum = (~Enable & Data) | (Data & ~Ci) | (Enable & ~Data & Ci);
  assign Co = (Enable & ~Direction & Data & Ci) | (Enable & Direction & ~Data & Ci);
  

endmodule 
  