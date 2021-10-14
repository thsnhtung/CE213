module Mux_2to1 (S_Mux2, In1, In2, Out_Mux2);
  input S_Mux2;  
  input In1, In2;
  output Out_Mux2;
  
  wire S_Mux2_n;
  wire wire_1, wire_2;
  
  not n1(S_Mux2_n, S_Mux2);    
  and a1(wire_1, In1, S_Mux2_n);
  and a2(wire_2, In2, S_Mux2);
  or o1(Out_Mux2, wire_1, wire_2);
  
endmodule
