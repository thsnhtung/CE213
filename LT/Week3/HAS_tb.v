module HAS_tb();
  reg Enable_test;
  reg Direction_test;
  reg Data_test;
  reg Ci_test;
  wire Sum_test;
  wire Co_test;
  
   
HAS HAS_inst0(
   .Enable(Enable_test), 
   .Direction(Direction_test),
   .Data(Data_test),
   .Ci(Ci_test),
   .Sum(Sum_test) ,
   .Co(Co_test) );
   
initial begin
  Enable_test = 0 ;
  Direction_test = 0 ;
  Data_test = 0 ;
  Ci_test = 0 ;
end
   
always begin
  #5 Ci_test = ~Ci_test ; 
end

always begin
  #10 Data_test = ~Data_test ; 
end

always begin
  #20 Direction_test = ~Direction_test ; 
end

always begin
  #40 Enable_test = ~Enable_test ; 
end


endmodule
