module Register_3bit_sync_tb();
  reg CLK_test;
  reg [2:0]Data_test;
  reg Load_test;
  reg [2:0]D_test; 
  wire [2:0]Q_test;


Register_3bit_sync Register_3bit_sync_inst0(.CLK(CLK_test), .Data(Data_test), 
                                  .Load(Load_test), .D(D_test), .Q(Q_test));
                                  
  
initial begin
  CLK_test = 0;
  Data_test = 0;
  Load_test = 0; 
  D_test = 0 ;

end


always begin
  #7 CLK_test = ~CLK_test;
end

always begin
  #17 D_test = D_test + 1;
end



always begin
  #100 Load_test = 0;
  #5 Data_test = Data_test + 3;
  #10 Load_test = 1 ;
  #10 Load_test = 0 ;
end

endmodule
  