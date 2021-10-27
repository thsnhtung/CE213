module Mux2_to1#(parameter num_bit_of_data = 8)(Data_in1, Data_in2, Select, Data_out); 
  input [num_bit_of_data-1:0]Data_in1;
  input [num_bit_of_data-1:0]Data_in2;
  input Select;
  output wire [num_bit_of_data-1:0]Data_out;

  assign Data_out = Select ? Data_in2 : Data_in1 ;     // select = 0 out = data1, select =1 out = data2
endmodule