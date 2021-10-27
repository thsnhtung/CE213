module ALU_tb();
  parameter num_shift_bit = 3;
  parameter num_bit_of_data = 32;
  
  reg [1:0]Opcode;
  reg [num_bit_of_data-1:0]Data_in1;
  reg [num_bit_of_data-1:0]Data_in2;
  
  reg [num_shift_bit-1:0]Distance;
  
  wire [num_bit_of_data-1:0]Out_data;


ALU #(.num_bit_of_data(num_bit_of_data), .num_shift_bit(num_shift_bit)) ALU_inst0(Opcode, Data_in1, Data_in2, Out_data, Distance);


initial begin
  Opcode = 0 ;
  Data_in1 = 0 ;
  Data_in2 = 0 ;
  Distance = 0 ;
  
  #200
  Opcode = 0 ;
  Data_in1 = -20 ;
  Data_in2 = 90 ;
  Distance = 2;
  
  #200
  Opcode = 1 ;
  Data_in1 = 13 ;
  Data_in2 = 17 ;
  Distance = 2;
  
  #200
  Opcode = 2 ;
  Data_in1 = 10 ;
  Data_in2 = 17 ;
  Distance = 2;
  
  
  #200
  Opcode = 0 ;
  Data_in1 = 25 ;
  Data_in2 = 10 ;
  Distance = 2;
  
  #200
  Opcode = 1 ;
  Data_in1 = 25 ;
  Data_in2 = 10 ;
  Distance = 2;
  
  #200
  Opcode = 2 ;
  Data_in1 = 5 ;
  Data_in2 = 20 ;
  Distance = 8;
  
end

endmodule
  