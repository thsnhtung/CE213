module Counter_tb();
  parameter numOfParameter = 4;
  reg Enable_test;
  reg Direction_test;
  reg Reset_test;
  reg CLK_test;
  
  wire [numOfParameter-1: 0]DataOut_test;


Counter#(.numOfBit(numOfParameter)) Counter_inst0(.Enable(Enable_test), 
                        .Direction(Direction_test), .CLK(CLK_test), 
                        .Reset(Reset_test), .DataOut(DataOut_test));
                        
initial begin
  Reset_test = 0;
  Enable_test = 0;
  Direction_test = 0;
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

always begin 
  #100 Direction_test = ~Direction_test;
end                   
                
                        
endmodule                      