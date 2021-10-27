module ALU #(parameter num_bit_of_data = 8, parameter num_shift_bit = 3)(Opcode, Data_in1, Data_in2, Out_data, Distance);
  // opcode = 0 data1 + dat2
  // opcode = 1 Data1 - data2
  // opcode = 3 Data1 << Distance
  // opcode = 4 nothing
  input [1:0]Opcode;
  input [num_bit_of_data-1:0]Data_in1;
  input [num_bit_of_data-1:0]Data_in2;
  
  input [num_shift_bit-1:0]Distance;
  
  output reg [num_bit_of_data-1:0]Out_data;
  
  
  always @(Opcode, Data_in1, Data_in2, Distance) begin
    case(Opcode)  
      2'd0: Out_data <= Data_in1 + Data_in2 ;
      2'd1: Out_data <= Data_in1 - Data_in2 ; 
      2'd2: Out_data <= Data_in1 << Distance;
    endcase   
      
  end
  
endmodule
  
  