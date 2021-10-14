module TTKT(Start,Feedback,Q,D);
  input wire Start,Feedback;
  input wire [1:0] Q;
  output wire [1:0] D;
  
  wire Q0not,Q1not,Feedbacknot;
  
  wire D2_temp;
  and(D2_temp,Q[1],Q0not);
  
  wire D1_temp,D0_temp1,D0_temp2;
  not(Q0not,Q[0]);
  not(Q1not,Q[1]);
  not(Feedbacknot,Feedback);
  
  and(D1_temp,Q1not,Q[0]);
  and(D0_temp1,Q[1],Feedbacknot,Q0not);
  and(D0_temp2,Start,Q1not,Q0not);
  or(D[0],D2_temp,D0_temp2);
  or(D[1],D1_temp,D0_temp1);  
endmodule