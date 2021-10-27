module RegisterFile #(parameter num_bit_of_data = 8, num_bit_of_column = 4)(CLK, WE, In_Addr, Data_in, Out_Addr1, Out_Addr2, Data_out1, Data_out2);
  input [num_bit_of_column-1:0]In_Addr;
  input [num_bit_of_data-1:0]Data_in;
  input [num_bit_of_column-1:0]Out_Addr1;
  input [num_bit_of_column-1:0]Out_Addr2;
  input WE, CLK;
  
  output [num_bit_of_data-1:0]Data_out1;
  output [num_bit_of_data-1:0]Data_out2;
  

	reg [num_bit_of_data-1:0] rom[2**num_bit_of_column-1:0];


  assign Data_out1 = rom[Out_Addr1];
  assign Data_out2 = rom[Out_Addr2];  
  
	always @(negedge CLK) begin
	  if (WE == 1) 
	    begin
	      rom[In_Addr] = Data_in;
	    end      
	end

endmodule


