module Convert(Start,Feedback,CLK,D);
  input wire Start,Feedback,CLK;
  output wire [1:0]D;
  
  wire [1:0]D1;
  
  
  TTKT a2(.Start(Start),.Feedback(Feedback),.Q(D1),.D(D));
  TTHT a1(.CLK(CLK),.Q(D),.D(D1));
  
  
endmodule
  
