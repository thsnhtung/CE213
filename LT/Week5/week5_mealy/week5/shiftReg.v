module shiftReg #(parameter numOfbits = 8)(input reg CLK, input wire [numOfbits-1:0] DataIn, input wire S0, input wire S1, output wire [numOfbits-1:0] DataOut);
  //module DFF(D, CLK, Q, Qnot, R, S);
  wire [numOfbits-1:0] DFF_IN;
  DFF_ dff[numOfbits-1:0] (DFF_IN, CLK, DataOut, , 1'b1, 1'b1);
  
  assign DFF_IN = (!S1&&!S0) ? DataOut : (!S1&&S0) ? DataIn : (S1&&!S0) ? (DataOut<<1) : (DataOut>>1)  ;
endmodule
  
