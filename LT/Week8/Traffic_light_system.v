module Traffic_light_system(CLK, Reset, Red_1, Yellow_1, Green_1, Red_2, Yellow_2, Green_2);
  parameter num_of_bit = 4; 
 
  parameter green_yellow_ratio = 3;
  
  input  CLK;
  input Reset;
  output Red_1, Yellow_1, Green_1, Red_2, Yellow_2, Green_2;
  
  supply0 ground;
  
  
  Traffic_light #(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) Traffic_light_inst0(.CLK(CLK), .Reset(Reset), .Set(ground),
                                                                                                       .Red(Red_1),. Yellow(Yellow_1), .Green(Green_1));
                                                                                                       
  Traffic_light #(.num_of_bit(num_of_bit), .green_yellow_ratio(green_yellow_ratio)) Traffic_light_inst1(.CLK(CLK), .Reset(ground), .Set(Reset),
                                                                                                       .Red(Red_2),. Yellow(Yellow_2), .Green(Green_2));     
                                                                                                       
                                                                                                                                                                                                          
  
endmodule