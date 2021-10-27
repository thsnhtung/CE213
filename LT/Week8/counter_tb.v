module counter_tb();
  reg CLK_test;
  reg Reset_test; 
  reg Set_test; 
  parameter num_of_bit = 4;
  parameter green_yellow_ratio = 4;
  wire [num_of_bit-1:0] State;
  
  
counter#(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) counter_inst0(.CLK(CLK_test), 
                                                                  .Reset(Reset_test), .Set(Set_test), .State(State));


initial begin
  Reset_test = 1 ;
  Set_test = 0 ;
  CLK_test = 0 ;
  
  #20 Reset_test = 0 ;

  
end


always begin
  #15
  CLK_test = ~CLK_test;
  
end


always begin
  #500
  Set_test = 1;
  #10
  Set_test = 0;
  
end


always begin
  #1200
  Reset_test = 1;
  #10
  Reset_test = 0;
  
end


endmodule
  
  



