module Mux_4to1 (S, In1, In2, In3, In4, Out);
  parameter n=8;
  input [1:0] S;
  input [n-1:0]In1, In2, In3, In4;
  output wire[n-1:0]Out;
  
  wire [n-1:0] wire_1, wire_2;
  
  Mux_2to1 mux2_0(S[0], In1, In2, wire_1);
  Mux_2to1 mux2_1(S[0], In3, In4, wire_2);
  Mux_2to1 mux2_2(S[1], wire_1, wire_2, Out);
  
endmodule