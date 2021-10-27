module Control_tb();
  parameter num_bit_of_data = 32;
  parameter num_bit_of_column = 2;
  
  
  reg CLK_test;
  reg Enable_test;
  
  wire Write_en_test;
  wire Mux_in_test;
  wire [1:0]Opcode_test;
  wire [num_bit_of_column-1:0]Addr_in_test;
  wire [num_bit_of_column-1:0]Addr_out1_test;
  wire [num_bit_of_column-1:0]Addr_out2_test;  
  wire Out_enable_test;
  wire [num_bit_of_data-1:0]Distance_test;  
  
  
  
  
  


Control #(.num_bit_of_data(num_bit_of_data), .num_bit_of_column(num_bit_of_column)) Control_inst0(.CLK(CLK_test), .Enable(Enable_test), .Write_en(Write_en_test), 
                                                                                                  .Mux_in(Mux_in_test), .Addr_in(Addr_in_test), 
                                                                                                  .Opcode(Opcode_test), .Addr_out1(Addr_out1_test), 
                                                                                                  .Addr_out2(Addr_out2_test), .Out_enable(Out_enable_test), .Distance(Distance_test));
                                                                                                  
                                                                                                  
                                                                                                  
initial begin
  CLK_test = 0;
  Enable_test = 0;
end

always begin
  #20
  CLK_test = ~CLK_test;
end

always begin
  #600
  Enable_test = 1;
  #40
  Enable_test = 0;
end


endmodule