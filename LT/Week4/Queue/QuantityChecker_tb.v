module QuantityChecker_tb();
  parameter numOfBit = 5;
  reg [numOfBit-1:0]DataIn0_test;
  reg [numOfBit-1:0]DataIn1_test;
  wire isFull_test; 
  wire isEmpty_test; 
  
  
  
  
QuantityChecker #(.numOfBit(numOfBit)) QuantityChecker_inst0(.DataIn0(DataIn0_test), .DataIn1(DataIn1_test), .isFull(isFull_test), .isEmpty(isEmpty_test));



initial begin
  DataIn0_test = 0 ;
  DataIn1_test = 0;
  
  #20
  DataIn0_test = 15 ;
  DataIn1_test = 5;
  
  #20
  DataIn0_test = 0 ;
  DataIn1_test = 16;
  
  #20
  DataIn0_test = 17 ;
  DataIn1_test = 1;
  
  #20
  DataIn0_test = 8 ;
  DataIn1_test = 8;
  
  #20
  DataIn0_test = 3 ;
  DataIn1_test = 6;
  
  #20
  DataIn0_test = 1 ;
  DataIn1_test = 2;
  
  #20
  DataIn0_test = 7 ;
  DataIn1_test = 7;
  
  #20
  DataIn0_test = 3 ;
  DataIn1_test = 2;
  
  #20
  DataIn0_test = 6 ;
  DataIn1_test = 6;
  
end 
endmodule