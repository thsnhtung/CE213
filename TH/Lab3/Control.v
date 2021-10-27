module Control #(parameter num_bit_of_data = 8, num_bit_of_column = 4)(CLK, Enable, Write_en, Mux_in, Addr_in, Opcode, Addr_out1, Addr_out2, Out_enable, Distance);
  input CLK;
  input Enable;
  
  output Write_en;
  output Mux_in;
  output [1:0]Opcode;
  output [num_bit_of_column-1:0]Addr_in;
  output [num_bit_of_column-1:0]Addr_out1;
  output [num_bit_of_column-1:0]Addr_out2;  
  output Out_enable;
  output [num_bit_of_data-1:0]Distance;  

  
  wire [3:0]Register_Decoder;
  
  
Register Register_inst0(.CLK(CLK), .Enable(Enable), .State(Register_Decoder));  
Decoder #(.num_bit_of_data(num_bit_of_data), .num_bit_of_column(num_bit_of_column)) Decoder_inst0(.State(Register_Decoder), 
                                                                            .Write_en(Write_en), .Mux_in(Mux_in), .Addr_in(Addr_in), 
                                                                            .Opcode(Opcode), .Addr_out1(Addr_out1), .Addr_out2(Addr_out2), 
                                                                            .Out_enable(Out_enable), .Distance(Distance));
                                                                            
endmodule