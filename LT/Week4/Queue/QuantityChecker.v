module QuantityChecker #(parameter numOfBit = 10)(DataIn0, DataIn1, isFull, isEmpty);
  input [numOfBit-1:0]DataIn0;
  input [numOfBit-1:0]DataIn1;
  output isFull; 
  output isEmpty; 
  wire isEqual, xor1, not_xor1;

  
Comparator#(.numOfBit(numOfBit-1)) Comparator_inst0(.DataIn0(DataIn0[numOfBit-2:0]), .DataIn1(DataIn1[numOfBit-2:0]), .isEqual(isEqual));

  xor x1 (xor1, DataIn0[numOfBit-1], DataIn1[numOfBit-1]);
  not n1 (not_xor1, xor1);
  and a1 (isEmpty, isEqual, not_xor1);
  and a2 (isFull, isEqual, xor1);
  

endmodule

// given n bit data, comparator on n-1 bit, 