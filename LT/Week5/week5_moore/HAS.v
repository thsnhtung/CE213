module HAS (I, Q, C, D, Cnext);
  input I, Q, C;
  output D, Cnext;
  wire w1;
  xor x1 (D, Q, C);
  xor x2 (w1, I, Q);
  and a1 (Cnext, C, w1);
endmodule