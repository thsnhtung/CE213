module D_Latch(CLK, D, Q);
  input CLK, D;
  output Q;
  
  wire D_not, X, Y, tmp;
   
  not not1(D_not, D);
  nand nand1(X, CLK, D);
  nand nand2(Y, CLK, D_not); 
  nand nand3(tmp, Q, Y);
  nand nand4(Q, tmp, X);
endmodule