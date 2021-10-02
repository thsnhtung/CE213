module Mux2to1_1bit (DataIn0, DataIn1, Select,  Output);
  input DataIn0;
  input DataIn1;
  input Select;
  output Output;       
  
  // Select = 0 => out = data0 , select = 1 => out = data1
  
  wire and0;
  wire and1;
  wire or1;
  wire not_Select;
  
  not n0 (not_Select, Select);
  and a0 (and0, DataIn0, not_Select);
  and a1 (and1, DataIn1, Select);
  or or0 (Output, and0, and1);
  
  
endmodule

