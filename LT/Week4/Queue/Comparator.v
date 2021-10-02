module Comparator#(parameter numOfBit = 10)(DataIn0, DataIn1, isEqual);
  input [numOfBit-1:0]DataIn0;
  input [numOfBit-1:0]DataIn1;
  output isEqual; 

  
  supply0 ground;
  supply1 power;
  wire [numOfBit-2:0]EQ;
  wire [numOfBit-2:0]GT;
  wire [numOfBit-2:0]LT;
  
  Comparator_1bit Comparator_1bit_inst0(.DataIn0(DataIn0[0]), .DataIn1(DataIn1[0]), 
                                        .GT_In(ground), .LT_In(ground), .EQ_In(power) , 
                                        .GT_Out(GT[0]), .LT_Out(LT[0]), .EQ_Out(EQ[0]));
                                        
  Comparator_1bit Comparator_1bit_last (.DataIn0(DataIn0[numOfBit-1]), .DataIn1(DataIn1[numOfBit-1]), 
                                        .GT_In(GT[numOfBit-2]), .LT_In(LT[numOfBit-2]), .EQ_In(EQ[numOfBit-2]) , 
                                        .GT_Out(), .LT_Out(), .EQ_Out(isEqual));                                     
  
  genvar i;
  generate
    for (i=1; i< numOfBit - 1; i=i+1) begin : generate_comparator
        Comparator_1bit Comparator_1bit_inst (.DataIn0(DataIn0[i]), .DataIn1(DataIn1[i]), 
                                        .GT_In(GT[i-1]), .LT_In(LT[i-1]), .EQ_In(EQ[i-1]) , 
                                        .GT_Out(GT[i]), .LT_Out(LT[i]), .EQ_Out(EQ[i]));
  end 
  endgenerate

  
  endmodule
  

