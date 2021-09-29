module counter_1bit_tb();
  reg Enable_test;
  reg Direction_test;
  reg Reset_test;
  reg CLK_test;
  reg Cin_test;
  
  wire Cout_test;
  wire Data_test;
  

counter_1bit counter_1bit_inst0(
   .Enable(Enable_test),
   .Direction(Direction_test),
   .Reset(Reset_test),
   .CLK(CLK_test),
   .Cin(Cin_test),
   .Cout(Cout_test),
   .Data(Data_test)
);



initial begin
  Reset_test = 0;
  Enable_test = 0;
  Direction_test = 0;
  Reset_test = 0;
  CLK_test = 0;
  Cin_test = 0;  
  
  
  #10 Reset_test = 1;
  #5 Reset_test = 0;
  

end

always @(posedge CLK_test) 
begin 
  $monitor("Enable: %d , Direction: %d, Reset: %d, Cin: %d, Cout: %d, Data: %d", Enable_test, Direction_test, Reset_test, Cin_test, Cout_test, Data_test);
end

always begin 
  #100 Enable_test = ~Enable_test;
end


always begin 
  #5 CLK_test = ~CLK_test;
end

always begin 
  #30 Direction_test = ~Direction_test;
end

always begin 
  #50 Cin_test = ~Cin_test;
end



endmodule


