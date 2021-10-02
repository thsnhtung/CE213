module Comparator_tb();
  parameter numOfBit = 10;
  reg [numOfBit-1:0]DataIn0_test;
  reg [numOfBit-1:0]DataIn1_test;
  wire isEqual_test; 
  

Comparator #(.numOfBit(numOfBit)) Comparator_inst0(.DataIn0(DataIn0_test), 
                                                   .DataIn1(DataIn1_test), .isEqual(isEqual_test));
                                                   
                                                   
initial begin
  DataIn0_test = 0 ;
  DataIn1_test = 0;
  
  #20
  DataIn0_test = 15 ;
  DataIn1_test = 0;
  
  #20
  DataIn0_test = 7 ;
  DataIn1_test = 4;
  
  #20
  DataIn0_test = 9 ;
  DataIn1_test = 3;
  
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
