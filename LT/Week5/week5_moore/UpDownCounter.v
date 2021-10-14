module UpDownCounter (CLK, En, Load, In, Out);
  parameter n = 64;
  input CLK, En, Load;
  input [n-1:0] In;
  output [n-1:0] Out;
  wire [n-1:0] DD0;
  wire [n-2:0] CCnext;
  wire [n-1:0] YD;
  
  HAS H0 		(.I(1'b0), .Q(Out[0]), 		.C(En), 				.D(DD0[0]), 	.Cnext(CCnext[0])); 
  HAS H[n-2:1] (.I(1'b0), .Q(Out[n-2:1]), .C(CCnext[n-3:0]),.D(DD0[n-2:1]),.Cnext(CCnext[n-2:1]));
  HAS H_MSB 	(.I(1'b0), .Q(Out[n-1]), 	.C(CCnext[n-2]), 	.D(DD0[n-1]), 	.Cnext());
  
  Mux_2to1 M[n-1:0] (.S_Mux2(Load), .In1(DD0), .In2(In), .Out_Mux2(YD));
  
  D_FlipFlop D[n-1:0] (.CLK(CLK), .D(YD), .Q(Out));
  
endmodule
