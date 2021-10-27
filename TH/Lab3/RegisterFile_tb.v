module RegisterFile_tb();
  parameter num_bit_of_column = 2;
  parameter num_bit_of_data = 32;
  reg [num_bit_of_column-1:0]In_Addr_test;
  reg [num_bit_of_data-1:0]Data_in_test;
  reg [num_bit_of_column-1:0]Out_Addr1_test;
  reg [num_bit_of_column-1:0]Out_Addr2_test;
  reg WE_test, CLK_test;
  
  wire [num_bit_of_data-1:0]Data_out1_test;
  wire [num_bit_of_data-1:0]Data_out2_test;
  



RegisterFile #(.num_bit_of_data(num_bit_of_data), .num_bit_of_column(num_bit_of_column)) RegisterFile_ints0 (.CLK(CLK_test), .WE(WE_test), .In_Addr(In_Addr_test), .Data_in(Data_in_test), 
                                                           .Out_Addr1(Out_Addr1_test), .Out_Addr2(Out_Addr2_test), .Data_out1(Data_out1_test), 
                                                           .Data_out2(Data_out2_test));
                                                           
                                                           
  initial begin
    #200
    In_Addr_test = 0;
    Data_in_test = 0;
    Out_Addr1_test = 0;
    Out_Addr2_test = 0;
    WE_test = 0;
    CLK_test = 0;
  
  end
  
  
  always begin
    #13 CLK_test = ~CLK_test;
  end
  
  
  always begin
    #200 WE_test = ~WE_test;
  end
  
  always begin
    #30 In_Addr_test = In_Addr_test + 1;
    Data_in_test = $random;
  end
  
  always begin 
        #30
        Out_Addr1_test = $random;
        Out_Addr2_test = $random;
      
end

endmodule
       
    