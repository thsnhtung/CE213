module Mux2to1#(parameter numOfBit = 4)(DataIn0, DataIn1, Select,  Output);
  input [numOfBit-1:0]DataIn0;
  input [numOfBit-1:0]DataIn1;
  input Select;
  output [numOfBit-1:0]Output;       
  
  // Select = 0 => out = data0 , select = 1 => out = data1
  
  Mux2to1_1bit Mux2to1_1bit_inst[numOfBit-1:0](DataIn0, DataIn1, Select,  Output);
  
endmodule