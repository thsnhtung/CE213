`timescale 1ns/1ps
module Traffic_light_system_tb();
  
  reg CLK, Reset; 
  wire Red_1, Yellow_1, Green_1, Red_2, Yellow_2, Green_2;
  
  
  
Traffic_light_system  Traffic_light_system_inst0(.CLK(CLK), .Reset(Reset),
                              	                   .Red_1(Red_1), .Yellow_1(Yellow_1), .Green_1(Green_1), 
                              	                   .Red_2(Red_2), .Yellow_2(Yellow_2), .Green_2(Green_2));
                              	                   
        
initial begin
  Reset = 1 ;
  CLK = 0 ;
  
  #20 Reset = 0 ;
end


always begin
  #5
  CLK = ~CLK;
  
end


                   	                   
           // 7.073 ns, 8ns                   	                   
                              	                   
                              	                   
                              	                   
endmodule

