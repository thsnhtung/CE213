module Traffic_light_tb();
  parameter num_of_bit = 4;
  parameter green_yellow_ratio = 3;
  
  reg CLK_test;
  reg Reset_test; 
  reg Set_test; 
  wire Red, Yellow, Green;


Traffic_light #(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) Traffic_light_inst0(.CLK(CLK_test), .Reset(Reset_test), .Set(Set_test),
                                                                                                       .Red(Red),. Yellow(Yellow), .Green(Green));
                                                                                                       
                                                                                                                                                                                                          
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
  #1000
  Set_test = 1;
  #10
  Set_test = 0;
  
end


always begin
  #2200
  Reset_test = 1;
  #10
  Reset_test = 0;
  
end


endmodule
  
  

