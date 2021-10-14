module D_FlipFlop(CLK, D, Q);
  input CLK, D;
  output reg Q;
  
  always @(posedge CLK) begin
		Q <= D;
  end
  
//  wire CLK_n, Out_L1;
//  
//  not not_1(CLK_n, CLK);
//  D_Latch L1 (CLK_n, D, Out_L1);
//  D_Latch L2 (CLK, Out_L1, Q);
endmodule