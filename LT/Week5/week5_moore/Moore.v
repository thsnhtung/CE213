module Moore(Start,CLK,input_data,out,Done);
  parameter n = 64;
	input  wire [n-1:0] input_data;
	input  wire CLK,Start;
	output [n-1:0]out;
	output Done;
	//tri [7:0]out;
	wire IE_temp;
	wire feedback_temp;
	//wire temp_Done;
	
	
	
	control a1(.Start(Start),.Feedback(feedback_temp),.CLK(CLK),.IE(IE_temp));
	Datapath a2(.CLK(CLK), .In(input_data),.LoadShift(IE_temp),.Out(out),.feedback(feedback_temp),.Done(Done));
	
	
	endmodule
	
	
  
  
  
