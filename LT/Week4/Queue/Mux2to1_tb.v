module Mux2to1_tb();
  parameter numOfBit = 4;
  reg [numOfBit-1:0]DataIn0_test;
  reg [numOfBit-1:0]DataIn1_test;
  reg Select_test;
  wire [numOfBit-1:0]Output_test; 



Mux2to1 #(.numOfBit(4)) Mux2to1_inst0(.DataIn0(DataIn0_test), .DataIn1(DataIn1_test), .Select(Select_test),  .Output(Output_test));


initial begin
  DataIn0_test = 0;
  DataIn1_test = 0;
  Select_test = 0;
  
  #20
  DataIn0_test = 5;
  DataIn1_test = 7;
  #50
  Select_test = 1;
  
  #20
  Select_test = 0;
  DataIn0_test = 10;
  DataIn1_test = 5;
  #50
  Select_test = 1;
end

endmodule