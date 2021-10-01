module LoadBlock_tb();
  reg Load_test, Data_test;
  wire Set_test, Reset_test;
  
  
  
  

LoadBlock LoadBlock_inst0(.Load(Load_test), .Data(Data_test), 
          .Set(Set_test), .Reset(Reset_test));
          
          
initial begin 
  Load_test = 0 ;
  Data_test = 0 ;
end


always begin
  #10 Load_test = ~Load_test;
end


always begin
  #5 Data_test = ~Data_test;
end

endmodule

