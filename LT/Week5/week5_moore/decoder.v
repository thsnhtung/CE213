module decoder(Q,IE);
  input wire [1:0]Q;
  output wire IE;
 // output wire Done;
  
  
  wire Q1not;
  not (Q1not,Q[1]);
  and b1(IE,Q1not,Q[0]);
  
 // and b2(Done,Q[1],Q[0]);
endmodule