module Counter_tb();
  reg CLK_test;
  reg [3:0]Data_test;
  reg Load_test;
  wire [3:0]Sync;
  wire [3:0]ASync;
  




Counter_sync Counter_sync_inst0(.CLK(CLK_test), .Load(Load_test), .Data(Data_test), .Data_out(Sync));

Counter_async Counter_async_inst0(.CLK(CLK_test), .Load(Load_test), .Data(Data_test), .Data_out(ASync));

initial begin
  CLK_test = 0;
  Data_test = 0;
  Load_test = 0; 
end


always begin
  #3 CLK_test = ~CLK_test;
end





always begin
  #110 Load_test = 0;
  #10 Data_test = Data_test + 1;
  #12 Load_test = 1 ;
  #8 Load_test = 0 ;
end


endmodule