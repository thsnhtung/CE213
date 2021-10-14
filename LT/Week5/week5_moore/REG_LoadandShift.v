module REG_LoadandShift(CLK, Shift, Value, Out);
  parameter n = 64;
  input CLK;
  input Shift;
  input [n-1:0] Value;
  output [n-1:0] Out;
  wire [n-1:0] D;
  
  wire [1:0] S;
  assign S = {Shift, 1'b1};
  
  Mux_4to1 M0 		  (.S(S), .In1(Out[0]), 	 .In2(Value[0]), 		.In3(1'b0), 		.In4(Out[1]), 		.Out(D[0]));
  Mux_4to1 M[n-2:1] (.S(S), .In1(Out[n-2:1]), .In2(Value[n-2:1]), .In3(Out[n-3:0]), .In4(Out[n-1:2]), .Out(D[n-2:1]));
  Mux_4to1 M_MSB	  (.S(S), .In1(Out[n-1]), 	 .In2(Value[n-1]), 	.In3(Out[n-2]),	.In4(1'b0), 		.Out(D[n-1]));
  
  D_FlipFlop DFF[n-1:0] (.CLK(CLK), .D(D), .Q(Out));
  
endmodule
