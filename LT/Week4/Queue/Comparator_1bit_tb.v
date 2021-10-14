module Comparator_1bit_tb();
  reg DataIn0_test, DataIn1_test, GT_In, LT_In, EQ_In;
  wire GT_Out, LT_Out, EQ_Out;
  supply0 ground;
  supply1 power;
  
  
Comparator_1bit Comparator_1bit_inst(.DataIn0(DataIn0_test), .DataIn1(DataIn1_test), 
                                      .GT_In(GT_In), .LT_In(LT_In), .EQ_In(EQ_In) , 
                                      .GT_Out(GT_Out), .LT_Out(LT_Out), .EQ_Out(EQ_Out));
                                      
                                      
        
initial begin
  DataIn0_test = 0 ;
  DataIn1_test = 0;
  GT_In = ground ;
  LT_In = ground ;
  EQ_In = power ;
  
  #20
  DataIn0_test = 0 ;
  DataIn1_test = 0;
  GT_In = 0 ;
  LT_In = 0 ;
  EQ_In = 1 ;
  
  #20
  DataIn0_test = 1 ;
  DataIn1_test = 0;
  GT_In = 0 ;
  LT_In = 0 ;
  EQ_In = 1 ;

  #20
  DataIn0_test = 0 ;
  DataIn1_test = 1;
  GT_In = 0 ;
  LT_In = 0 ;
  EQ_In = 1 ;
  
  
  #20
  DataIn0_test = 1 ;
  DataIn1_test = 1;
  GT_In = 0 ;
  LT_In = 0 ;
  EQ_In = 1 ;
  
  #20
  DataIn0_test = 0 ;
  DataIn1_test = 1;
  GT_In = 1 ;
  LT_In = 0 ;
  EQ_In = 0 ;
  
  
  #20
  DataIn0_test = 0 ;
  DataIn1_test = 0;
  GT_In = 1 ;
  LT_In = 0 ;
  EQ_In = 0 ;
  
  #20
  DataIn0_test = 0 ;
  DataIn1_test = 1;
  GT_In = 1 ;
  LT_In = 0 ;
  EQ_In = 0 ;
  
  #20
  DataIn0_test = 1 ;
  DataIn1_test = 0;
  GT_In = 0 ;
  LT_In = 1 ;
  EQ_In = 0 ;
  
end
endmodule
  
  
  