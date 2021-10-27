module Mux2_to1_tb();
  parameter num_bit_of_data = 32;
  reg [num_bit_of_data-1:0]Data_in1_test;
  reg [num_bit_of_data-1:0]Data_in2_test;
  reg Select_test;
  wire [num_bit_of_data-1:0]Data_out_test;


Mux2_to1#(.num_bit_of_data(num_bit_of_data)) Mux2_to1_inst(.Data_in1(Data_in1_test), .Data_in2(Data_in2_test), .Select(Select_test), .Data_out(Data_out_test)); 

initial begin
  Data_in1_test = 0;
  Data_in2_test = 0;
  Select_test = 0;
  
  #200 
  Data_in1_test = 5;
  Data_in2_test = 15;
  Select_test = 0;
  
  #200 
  Data_in1_test = 1555;
  Data_in2_test = 15;
  Select_test = 0;

  #200 
  Data_in1_test = 1555;
  Data_in2_test = 15;
  Select_test = 1;


  #200 
  Data_in1_test = 4;
  Data_in2_test = 170;
  Select_test = 1;
  
end
endmodule
