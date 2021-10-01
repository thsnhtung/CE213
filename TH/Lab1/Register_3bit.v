module Register_3bit(CLK, Data, Load, D, Q);
  input CLK ;
  input [2:0]Data;
  input Load ;
  input [2:0]D;
  output [2:0]Q;

Register_1bit Register_1bit_inst0(.CLK(CLK), .Data(Data[0]), 
                                         	.Load(Load), .D(D[0]), .Q(Q[0]));

Register_1bit Register_1bit_inst1(.CLK(CLK), .Data(Data[1]), 
                                         	.Load(Load), .D(D[1]), .Q(Q[1]));
                                         	
Register_1bit Register_1bit_inst2(.CLK(CLK), .Data(Data[2]), 
                                         	.Load(Load), .D(D[2]), .Q(Q[2]));

endmodule