module ASIC#(parameter num_bit_of_data = 8, num_bit_of_column = 4)(CLK, Enable, Data_in, Data_out, Finish);
  input [num_bit_of_data-1:0]Data_in;
  output [num_bit_of_data-1:0]Data_out;
  output Finish;
  input CLK;
  input Enable;
  
  /*
  output [num_bit_of_data-1:0]Data_out1_test ;
  output [num_bit_of_column-1:0]Addr_out1_test;
  output Write_en_test;
  output [num_bit_of_column-1:0]Addr_in_test;
  output [num_bit_of_data-1:0]Data_in_test;
  output Mux_in_test;
  
  output [num_bit_of_data-1:0]Data_out2_test ;
  output [1:0] Opcode_test;
  output [num_bit_of_data-1:0]Data_feed_back_test; */
  
  wire [num_bit_of_column-1:0]Addr_in;
  wire [num_bit_of_column-1:0]Addr_out1;
  wire [num_bit_of_column-1:0]Addr_out2;
  
  
  wire Write_en;
  wire Mux_in;
  wire [num_bit_of_data-1:0]Distance;
  wire [num_bit_of_data-1:0]Data_feed_back;
  wire [num_bit_of_data-1:0]Data_out_mux;
  
  wire [num_bit_of_data-1:0]Data_out1;
  wire [num_bit_of_data-1:0]Data_out2;
  wire [1:0] Opcode;
  
  wire Out_enable;
 
assign  Finish = Out_enable;
/*
assign Addr_out1_test = Addr_out1;
assign Data_out1_test = Data_out1;
assign Write_en_test = Write_en;
assign Addr_in_test = Addr_in;
assign Data_in_test = Data_out_mux;

assign Mux_in_test = Mux_in;
assign Data_out2_test = Data_out2;
assign Opcode_test = Opcode;
assign Data_feed_back_test = Data_feed_back; */


bufif1 b1[num_bit_of_data-1:0] (Data_out[num_bit_of_data-1:0], Data_out1[num_bit_of_data-1:0], Out_enable);

  

Mux2_to1#(.num_bit_of_data(num_bit_of_data)) Mux2_to1_inst0(.Data_in1(Data_in), .Data_in2(Data_feed_back), .Select(Mux_in), .Data_out(Data_out_mux)); 


Control #(.num_bit_of_data(num_bit_of_data), .num_bit_of_column(num_bit_of_column)) Control_inst0(.CLK(CLK), .Enable(Enable), 
                                                                        .Write_en(Write_en), .Mux_in(Mux_in), 
                                                                        .Addr_in(Addr_in), .Opcode(Opcode), 
                                                                        .Addr_out1(Addr_out1), .Addr_out2(Addr_out2), 
                                                                        .Out_enable(Out_enable), .Distance(Distance));
                                                                        
RegisterFile #(.num_bit_of_data(num_bit_of_data), .num_bit_of_column(num_bit_of_column)) RegisterFile_inst0(.CLK(CLK), .WE(Write_en), 
                                                                                .In_Addr(Addr_in), .Data_in(Data_out_mux), .Out_Addr1(Addr_out1), 
                                                                                .Out_Addr2(Addr_out2), .Data_out1(Data_out1), .Data_out2(Data_out2));    
                                                                                
                                                                                

ALU #(.num_bit_of_data(num_bit_of_data), .num_shift_bit(num_bit_of_data)) ALU_inst0(.Opcode(Opcode), .Data_in1(Data_out1), .Data_in2(Data_out2), 
                                                                                      .Out_data(Data_feed_back), .Distance(Distance));                                                              
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
endmodule