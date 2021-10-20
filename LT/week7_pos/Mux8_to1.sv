module Mux8_to1 (S, In1, In2, In3, In4,In5, In6, In7, In8, Out);
  parameter n = 8;
  input [2:0] S;
  input  [n-1:0]In1, In2, In3, In4,In5,In6,In7,In8;
  output [n-1:0]Out;
  
  wire [n-1:0] wire_1, wire_2;
  
  Mux_4to1  mux4_0 (S[1:0], In1, In2, In3, In4, wire_1);
  Mux_4to1  mux4_1 (S[1:0], In5, In6, In7, In8, wire_2);
  Mux_2to1  mux2_2 (S[2], wire_1, wire_2, Out);
  
endmodule
