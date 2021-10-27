module ASIC_tb();
  parameter num_bit_of_data = 32;
  parameter num_bit_of_column = 2;
  
  reg [num_bit_of_data-1:0]Data_in_test;
  reg CLK_test;
  reg Enable_test;
  
  wire [num_bit_of_data-1:0]Data_out_test;
  wire Finish_test;
  reg [7:0]random_num;
  
ASIC#(.num_bit_of_data(num_bit_of_data), .num_bit_of_column(num_bit_of_column)) ASIC_inst0(.CLK(CLK_test), .Enable(Enable_test), .Data_in(Data_in_test), 
                                                                                           .Data_out(Data_out_test), .Finish(Finish_test));                                                                                           
                                                                                                                                                                                     
                                                                                           
initial begin
  CLK_test = 0;
  Enable_test = 0;
  Data_in_test = 10;

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


always @(Enable_test) begin
  if (Enable_test ==1)
    #10 
    random_num = $random;
    Data_in_test = random_num;
    #40 
    random_num = $random;
    Data_in_test = random_num;
    #40 
    random_num = $random;
    Data_in_test = random_num;
    #40 
    random_num = $random;
    Data_in_test = random_num;
end
endmodule

