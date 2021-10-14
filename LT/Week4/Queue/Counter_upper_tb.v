`timescale 1 ps/ 1 ps
module Counter_upper_tb();
  parameter numOfBit = 11;
  reg Enable_test;
  reg Reset_test;
  reg CLK_test;
  
  wire [numOfBit-1: 0]DataOut_test;


Counter_upper #(.numOfBit(numOfBit)) Counter_upper_inst0(.Enable(Enable_test),.CLK(CLK_test), 
                        .Reset(Reset_test), .DataOut(DataOut_test));
                        
initial begin
  Reset_test = 0;
  Enable_test = 0;
  Reset_test = 0;
  CLK_test = 0;

  
  #10 Reset_test = 1;
  #5 Reset_test = 0;
  
end                

always begin 
  #200 Enable_test = ~Enable_test;
end 
      
always begin 
  #5 CLK_test = ~CLK_test;
end     

          
                        
endmodule                      



