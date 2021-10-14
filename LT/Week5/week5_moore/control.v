module control(Start,Feedback,CLK,IE);
  input wire Start,Feedback,CLK;
  output wire IE;
  // output wire Done;
  
  wire [1:0]D1;
  Convert c1(.Start(Start),.Feedback(Feedback),.CLK(CLK),.D(D1));
  decoder c2(.Q(D1),.IE(IE));
  
  
endmodule